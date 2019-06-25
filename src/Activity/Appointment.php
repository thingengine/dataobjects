<?PHP
declare(strict_types=1);
/*
 * (c) ThingEngine Team
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */
namespace ThingEngine\DataObjects\Activity;

use Respect\Validation\Validator as Validator;
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;

class Appointment
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $ref_token_2;
    protected $scheduled_time;
    protected $start_time;
    protected $end_time;
    protected $status;
    protected $type;
    protected $reason;
    protected $result;
    protected $tool;
    protected $created_at;
    protected $updated_at;
    protected $deleted_at;
    protected $created_by;
    protected $updated_by;
    protected $deleted_by;


    /**
     * Initialize Default Values
     */
    public function defaultValues(){
        $uuid4 = Uuid::uuid4();
        $this->setToken($uuid4->toString());
        $this->setCreatedAt(gmdate("Y-m-d H:i:s"));
    }


    /**
     * @return null
     */
    public function toArray(){

        foreach(get_object_vars ( $this ) as $property=>$value){
            $func = "get".str_replace("_", "", ucwords($property, "_"));
            if (method_exists($this, $func)){
                $value = $this->$func();
                if(!is_null($value)){
                    $data[$property] = $this->$func();
                }
            }
        }

        return $data ?? null;
    }


    /**
     * @param $property
     * @return mixed
     */
    public function __get($property) {

        $func = "get".str_replace("_", "", ucwords($property, "_"));
        if (method_exists($this, $func)){
            return $this->$func();
        }
    }


    /**
     * @param $property
     * @param $value
     * @return mixed
     */
    public function __set($property, $value) {
        $func = "set".str_replace("_", "", ucwords($property, "_"));
        if (method_exists($this, $func)){
            return $this->$func($value);
        }
    }


    /**
     * @param array $data
     * @return $this
     * @throws \Exception
     */
    public function addValues(Array $data)
    {

        try {
            if (!empty($data)) {
                foreach ($data as $key => $value) {
                    // We are going to set the value, this will handle filters
                    $set_func = "set" . str_replace("_", "", ucwords($key, "_"));
                    if (method_exists($this, $set_func)) {
                        if (is_numeric($value)) {
                            $value = (int)$value;
                        }
                        $this->$set_func($value);
                    }

                }
            }

        } catch(\InvalidArgumentException $e){
            throw new \InvalidArgumentException($e->getMessage(), $e->getCode(), $e);
        } catch (\TypeError $e) {
            throw new \TypeError($e->getMessage(), $e->getCode(), $e);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage(), $e->getCode(), $e);
        }

        return $this;
    }


    /**********************
     * GETTERS
     *********************/

    public function getId()
    {
        return $this->id;
    }

    public function getToken()
    {
        return $this->token;
    }

    public function getRefToken()
    {
        return $this->ref_token;
    }

    public function getRefToken2()
    {
        return $this->ref_token_2;
    }

    public function getScheduledTime()
    {
        return $this->scheduled_time;
    }

    public function getStartTime()
    {
        return $this->start_time;
    }

    public function getEndTime()
    {
        return $this->end_time;
    }

    public function getStatus()
    {
        return $this->status;
    }

    public function getType()
    {
        return $this->type;
    }

    public function getReason()
    {
        return $this->reason;
    }

    public function getResult()
    {
        return $this->result;
    }

    public function getTool()
    {
        return $this->tool;
    }

    public function getCreatedAt()
    {
        return $this->created_at;
    }

    public function getUpdatedAt()
    {
        return $this->updated_at;
    }

    public function getDeletedAt()
    {
        return $this->deleted_at;
    }

    public function getCreatedBy()
    {
        return $this->created_by;
    }

    public function getUpdatedBy()
    {
        return $this->updated_by;
    }

    public function getDeletedBy()
    {
        return $this->deleted_by;
    }


    /**********************
     * SETTERS
     *********************/

    public function setId($value = null) : Self
    {
        $this->id = $value;
        return $this;
    }

    public function setToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->token = $value;
        return $this;
    }

    public function setRefToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->ref_token = $value;
        return $this;
    }

    public function setRefToken2($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->ref_token_2 = $value;
        return $this;
    }

    public function setScheduledTime($value = null) : Self
    {
        $this->scheduled_time = $value;
        return $this;
    }

    public function setStartTime($value = null) : Self
    {
        $this->start_time = $value;
        return $this;
    }

    public function setEndTime($value = null) : Self
    {
        $this->end_time = $value;
        return $this;
    }

    public function setStatus($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->status = $value;
        return $this;
    }

    public function setType($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->type = $value;
        return $this;
    }

    public function setReason($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->reason = $value;
        return $this;
    }

    public function setResult($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->result = $value;
        return $this;
    }

    public function setTool($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->tool = $value;
        return $this;
    }

    public function setCreatedAt($value = null) : Self
    {
        $this->created_at = $value;
        return $this;
    }

    public function setUpdatedAt($value = null) : Self
    {
        $this->updated_at = $value;
        return $this;
    }

    public function setDeletedAt($value = null) : Self
    {
        $this->deleted_at = $value;
        return $this;
    }

    public function setCreatedBy($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->created_by = $value;
        return $this;
    }

    public function setUpdatedBy($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->updated_by = $value;
        return $this;
    }

    public function setDeletedBy($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->deleted_by = $value;
        return $this;
    }

}