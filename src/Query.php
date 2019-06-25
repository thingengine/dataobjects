<?PHP
declare(strict_types=1);
/*
 * (c) ThingEngine Team
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */
namespace ThingEngine\DataObjects;

use PDO;
use PDOStatement;

class Query
{

    /* @var MyPDO */
    protected $db;
    protected $data;
    protected $table_name;
    protected $class_name;

    protected $columns = "*";
    protected $where = null;
    protected $params = [];
    protected $limit = 25;
    protected $offset = 0;
    protected $order_by = "";

    public function __construct(PDO $db, $table_name, $class_name)
    {
        $this->db = $db;
        $this->table_name = $table_name;
        $this->class_name = $class_name;
    }

    public function reset(){
        $this->columns = "*";
        $this->where = null;
        $this->params = [];
        $this->limit = 25;
        $this->offset = 0;
        $this->order_by = "";
        return $this;
    }


    // a helper function to run prepared statements smoothly
    public function run($sql, $args = [])
    {
        if (!$args)
        {
            return $this->query($sql);
        }
        $stmt = $this->db->prepare($sql);
        $stmt->execute($args);
        return $stmt;
    }


    public function setTableName($table_name){
        $this->table_name = $table_name;
        return $this;
    }

    public function setClassName($class_name){
        $this->class_name = $class_name;
        return $this;
    }



    public function paginate(Int $page, Int $limit){
        $this->limit($limit);
        $this->offset((((Int) ($page ?? 1) - 1) * 2));
        return $this;
    }

    public function paginateByRequest(){
        $this->limit = ((Int) ($_REQUEST['pp'] ?? 25));
        $this->offset = (((Int) ($_REQUEST['p'] ?? 1) - 1) * 2);
        return $this;
    }

    public function limit(Int $limit){
        $this->limit = $limit;
        return $this;
    }

    public function offset(Int $offset){
        $this->offset = $offset;
        return $this;
    }


    public function where(string $column, string $condition, $value){

        if(empty($this->where)){
            $this->where = " WHERE ".$column."  ".$condition." ? ";
        } else {
            $this->where .= " AND ".$column."  ".$condition." ? ";
        }

        $this->params[] = $value;
        return $this;
    }

    public function between(string $column, $value1, $value2){

        if(empty($this->where)){
            $this->where = " WHERE ".$column." BETWEEN ? AND ? ";
        } else {
            $this->where .= " AND ".$column." BETWEEN ? AND ? ";
        }

        $this->params[] = $value1;
        $this->params[] = $value2;
        return $this;
    }


    public function whereIn(string $column, array $values){
        if(empty($this->where)){
            $this->where = " WHERE ".$column."  IN ( ".implode(',', array_fill(0, count($values), '?'))." )";
        } else {
            $this->where .= " AND ".$column."  IN ( ".implode(',', array_fill(0, count($values), '?'))." )";
        }

        foreach($values as $value){
            $this->params[] = $value;
        }


        return $this;
    }

    public function orderBy($column, $direction = "DESC"){

        if(!in_array(strtoupper($direction),['ASC','DESC']))
            $direction = "DESC";

        $this->order_by = " order by ".$column." ".$direction;
        return $this;
    }



    protected function setSql(String $sql = "")
    {
        if ($sql == "") {
            $sql = " SELECT " . $this->columns . " FROM " . $this->table_name . " ";

            if (!empty($this->where)) {
                $sql .= " " . $this->where . " ";
            }

            if (!empty($this->order_by)) {
                $sql .= " " . $this->order_by . " ";
            }

            if ((!empty($this->offset)) || ($this->limit)) {
                $sql .= " LIMIT " . $this->offset . ", " . $this->limit . " ";
            }
        }

        return $sql;
    }


    public function getPaging(){
        $paging['page'] = $this->offset + 1;
        $paging['per_page'] = $this->limit;
        $paging['total_records'] = $this->recordCount();
        $paging['last_page'] = ceil($paging['total_records']/$this->limit);
        return $paging;
    }


    public function recordCount(){
        $sql = " SELECT count(id) as total_records FROM " . $this->table_name . " ";
        $sql .= " " . $this->where . " ";
        $results = $this->run($this->setSql($sql), $this->params)->fetch();
        return $results['total_records'] ?? 0;
    }

    public function fetchAll($sql = "", $params = "")
    {
        return $this->data = $this->run($this->setSql($sql), $this->params)->fetchAll(PDO::FETCH_CLASS, $this->class_name);
    }

    public function fetch()
    {
        return $this->data = $this->run($this->setSql(), $this->params)->fetch(PDO::FETCH_CLASS, $this->class_name);
    }

    public function fetchList($key,$value){
        $this->columns = $key.",".$value;
        return $this->data = $this->run($this->setSql(), $this->params)->fetchAll(PDO::FETCH_KEY_PAIR);
    }

    public function getData(){
        return $this->data;
    }


    /**
     * @param $data
     * @param array $exclude
     * @return bool|PDOStatement
     */
    public function save($data,  $exclude = array()){

        $fields = $values = array();

        if( !is_array($exclude) )
            $exclude = array($exclude);

        foreach( $data as $key =>$value ) {
            if( !in_array($key, $exclude) ) {
                $fields[] = "`$key`";
                $values[] = $value;
            }
        }

        $sql = "INSERT INTO ".$this->table_name." (".implode(",", $fields).") VALUES ( ".implode(',', array_fill(0, count($fields), '?'))." ) ";

        return $this->run($sql,$values);
    }


    public function update($data,  $exclude = array()){
        $fields = $values = array();

        if( !is_array($exclude) )
            $exclude = array($exclude);

        foreach( $data as $key =>$value ) {
            if( !in_array($key, $exclude) ) {
                $fields[] = "`$key` = ?";
                $values[] = $value;
            }
        }

        foreach($this->params as $param){
            $values[] = $param;
        }

        $sql = "UPDATE ".$this->table_name." SET ".implode(",", $fields)." ". $this->where;
        return $this->run($sql,$values);
    }
}
