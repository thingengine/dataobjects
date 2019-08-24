<?PHP
declare(strict_types=1);
/*
 * (c) ThingEngine Team
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */
namespace ThingEngine\DataObjects\Content;

use Respect\Validation\Validator as Validator;
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;
use ThingEngine\DataObjects\DataObject;

class Article extends DataObject
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

    public function setParentToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->parent_token = $value;
        return $this;
    }

    public function setAuthorToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->author_token = $value;
        return $this;
    }

    public function setEditorToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->editor_token = $value;
        return $this;
    }

    public function setArticleDate($value = null) : Self
    {
        $this->article_date = $value;
        return $this;
    }

    public function setArticlePublishDate($value = null) : Self
    {
        $this->article_publish_date = $value;
        return $this;
    }

    public function setArticleExpiresDate($value = null) : Self
    {
        $this->article_expires_date = $value;
        return $this;
    }

    public function setArticleContent($value = null) : Self
    {
        $this->article_content = $value;
        return $this;
    }

    public function setArticleTitle($value = null) : Self
    {
        $this->article_title = $value;
        return $this;
    }

    public function setArticleExcerpt($value = null) : Self
    {
        $this->article_excerpt = $value;
        return $this;
    }

    public function setArticleStatus($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->article_status = $value;
        return $this;
    }

    public function setArticleType($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->article_type = $value;
        return $this;
    }

    public function setArticlePassword($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 255)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 255 Characters");
        }

        $this->article_password = $value;
        return $this;
    }

    public function setSlug($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 255)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 255 Characters");
        }

        $this->slug = $value;
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