<?PHP
declare(strict_types=1);
/*
 * (c) TaylorDigital Team
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */
namespace ThingEngine\DataObjects\Content;


use Respect\Validation\Validator as Validator;
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;

class Article
{
    protected $id;
    protected $token;
    protected $ref_token;
    protected $parent_token;
    protected $author_token;
    protected $editor_token;
    protected $article_date;
    protected $article_publish_date;
    protected $article_expires_date;
    protected $article_content;
    protected $article_title;
    protected $article_excerpt;
    protected $article_status;
    protected $article_type;
    protected $article_password;
    protected $slug;
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
        $this->setArticleStatus("NEW");
        $this->setArticleTitle("Untitled Article");
        $this->setSlug($this->getArticleTitle()."-".time()."-".mt_rand(2,100));
        $this->setArticleDate(gmdate("Y-m-d H:i:s"));
        $this->setArticlePublishDate(gmdate("Y-m-d H:i:s"));
        $this->setCreatedAt(gmdate("Y-m-d H:i:s"));
    }

    /**
     * @return null
     */
    public function toArray(){

        foreach(get_object_vars ( $this ) as $property=>$value){
            $func = "get".str_replace("_", '', ucwords($property, "_"));
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

        $func = "get".str_replace("_", '', ucwords($property, "_"));
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

        $func = "set".str_replace("_", '', ucwords($property, "_"));
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
                    $set_func = "set" . str_replace("_", '', ucwords($key, "_"));
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

    public function getParentToken()
    {
        return $this->parent_token;
    }

    public function getAuthorToken()
    {
        return $this->author_token;
    }

    public function getEditorToken()
    {
        return $this->editor_token;
    }

    public function getArticleDate()
    {
        return $this->article_date;
    }

    public function getArticlePublishDate()
    {
        return $this->article_publish_date;
    }

    public function getArticleExpiresDate()
    {
        return $this->article_expires_date;
    }

    public function getArticleContent()
    {
        return $this->article_content;
    }

    public function getArticleTitle()
    {
        return $this->article_title;
    }

    public function getArticleExcerpt()
    {
        return $this->article_excerpt;
    }

    public function getArticleStatus()
    {
        return $this->article_status;
    }

    public function getArticleType()
    {
        return $this->article_type;
    }

    public function getArticlePassword()
    {
        return $this->article_password;
    }

    public function getSlug()
    {
        return $this->slug;
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

        if(!Validator::intVal()->validate($value))
            throw new \InvalidArgumentException("id must be nad integer");

        $this->id = $value;
        return $this;
    }

    public function setToken($value = null) : Self
    {
        if(!Validator::stringType()->length(10, 36)->validate($value))
            throw new \InvalidArgumentException("token must be between 10 and 36 Characters");

        $this->token = $value;
        return $this;
    }

    public function setRefToken($value = null) : Self
    {
        if(!Validator::stringType()->length(10, 36)->validate($value))
            throw new \InvalidArgumentException("ref_token must be between 10 and 36 Characters");

        $this->ref_token = $value;
        return $this;
    }

    public function setParentToken($value = null) : Self
    {
        if(!Validator::stringType()->length(10, 36)->validate($value))
            throw new \InvalidArgumentException("parent_token must be between 10 and 36 Characters");

        $this->parent_token = $value;
        return $this;
    }

    public function setAuthorToken($value = null) : Self
    {
        if(!Validator::stringType()->length(10, 36)->validate($value))
            throw new \InvalidArgumentException("author_token must be between 10 and 36 Characters");

        $this->author_token = $value;
        return $this;
    }

    public function setEditorToken($value = null) : Self
    {
        if(!Validator::stringType()->length(10, 36)->validate($value))
            throw new \InvalidArgumentException("editor_token must be between 10 and 36 Characters");

        $this->editor_token = $value;
        return $this;
    }

    public function setArticleDate($value = null) : Self
    {
        if(!Validator::date()->validate($value))
            throw new \InvalidArgumentException("article_date must be a date");

        $this->article_date = date("Y-m-d H:i:s", strtotime($value));
        return $this;
    }

    public function setArticlePublishDate($value = null) : Self
    {
        if(!Validator::date()->validate($value))
            throw new \InvalidArgumentException("publish_date must be a date");

        $this->article_publish_date = date("Y-m-d H:i:s", strtotime($value));;
        return $this;
    }

    public function setArticleExpiresDate($value = null) : Self
    {
        if(!Validator::date()->validate($value))
            throw new \InvalidArgumentException("article_expires_date must be a date");

        $this->article_expires_date = date("Y-m-d H:i:s", strtotime($value));;
        return $this;
    }

    public function setArticleContent($value = null) : Self
    {
        $this->article_content = $value;
        return $this;
    }

    public function setArticleTitle($value = null) : Self
    {

        if(!Validator::stringType()->length(10, 250)->validate($value))
            throw new \InvalidArgumentException("article_title must be between 10 and 250 Characters");

        $this->article_title = $value;
        return $this;
    }

    public function setArticleExcerpt($value = null) : Self
    {
        if(!Validator::stringType()->length(10, 250)->validate($value))
            throw new \InvalidArgumentException("article_excerpt must be between 10 and 250 Characters");

        $this->article_excerpt = $value;
        return $this;
    }

    public function setArticleStatus($value = null) : Self
    {

        if(!in_array(strtoupper($value), ['DRAFT', 'ARCHIVED', 'PUBLISHED', 'IN_REVIEW', 'NEW']))
            throw new \InvalidArgumentException("article_password must be between 8 and 16 Characters");

        $this->article_status = $value;
        return $this;
    }

    public function setArticleType($value = null) : Self
    {
        $this->article_type = $value;
        return $this;
    }

    public function setArticlePassword($value = null) : Self
    {
        if(!Validator::stringType()->length(8, 16)->validate($value))
            throw new \InvalidArgumentException("article_password must be between 8 and 16 Characters");

        $this->article_password = $value;
        return $this;
    }

    public function setSlug($value = null) : Self
    {
        if(!Validator::stringType()->length(10, 250)->validate($value))
            throw new \InvalidArgumentException("article_title must be between 10 and 250 Characters");

        if(!Validator::slug()->validate($value))
            $value = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $value)));

        $this->slug = $value;
        return $this;
    }

    public function setCreatedAt($value = null) : Self
    {
        if(!Validator::date()->validate($value))
            throw new \InvalidArgumentException("created_at must be a date");

        $this->created_at = date("Y-m-d H:i:s", strtotime($value));;
        return $this;
    }

    public function setUpdatedAt($value = null) : Self
    {
        if(!Validator::date()->validate($value))
            throw new \InvalidArgumentException("updated_at must be a date");

        $this->updated_at = date("Y-m-d H:i:s", strtotime($value));;
        return $this;
    }

    public function setDeletedAt($value = null) : Self
    {
        if(!Validator::date()->validate($value))
            throw new \InvalidArgumentException("deleted_at must be a date");

        $this->deleted_at = date("Y-m-d H:i:s", strtotime($value));;
        return $this;
    }

    public function setCreatedBy($value = null) : Self
    {
        if(!Validator::stringType()->length(10, 36)->validate($value))
            throw new \InvalidArgumentException("created_by must be between 10 and 36 Characters");

        $this->created_by = $value;
        return $this;
    }

    public function setUpdatedBy($value = null) : Self
    {
        if(!Validator::stringType()->length(10, 36)->validate($value))
            throw new \InvalidArgumentException("updated_by must be between 10 and 36 Characters");

        $this->updated_by = $value;
        return $this;
    }

    public function setDeletedBy($value = null) : Self
    {

        if(!Validator::stringType()->length(10, 36)->validate($value))
            throw new \InvalidArgumentException("deleted_by must be between 10 and 36 Characters");

        $this->deleted_by = $value;
        return $this;
    }
}
