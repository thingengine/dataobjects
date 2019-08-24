<?PHP
declare(strict_types=1);
/*
 * (c) ThingEngine Team
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */
namespace ThingEngine\DataObjects\Media;

use Respect\Validation\Validator as Validator;
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;
use ThingEngine\DataObjects\DataObject;

class Photo extends DataObject
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $photo_type;
    protected $photo;
    protected $photo_thumb;
    protected $title;
    protected $description;
    protected $is_active;
    protected $is_public;
    protected $must_be_loggged_in;
    protected $slug;
    protected $photo_password;
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

    public function getPhotoType()
    {
        return $this->photo_type;
    }

    public function getPhoto()
    {
        return $this->photo;
    }

    public function getPhotoThumb()
    {
        return $this->photo_thumb;
    }

    public function getTitle()
    {
        return $this->title;
    }

    public function getDescription()
    {
        return $this->description;
    }

    public function getIsActive()
    {
        return $this->is_active;
    }

    public function getIsPublic()
    {
        return $this->is_public;
    }

    public function getMustBeLogggedIn()
    {
        return $this->must_be_loggged_in;
    }

    public function getSlug()
    {
        return $this->slug;
    }

    public function getPhotoPassword()
    {
        return $this->photo_password;
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

    public function setPhotoType($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->photo_type = $value;
        return $this;
    }

    public function setPhoto($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 64)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 64 Characters");
        }

        $this->photo = $value;
        return $this;
    }

    public function setPhotoThumb($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 64)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 64 Characters");
        }

        $this->photo_thumb = $value;
        return $this;
    }

    public function setTitle($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 128)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 128 Characters");
        }

        $this->title = $value;
        return $this;
    }

    public function setDescription($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 255)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 255 Characters");
        }

        $this->description = $value;
        return $this;
    }

    public function setIsActive($value = null) : Self
    {
        $this->is_active = $value;
        return $this;
    }

    public function setIsPublic($value = null) : Self
    {
        $this->is_public = $value;
        return $this;
    }

    public function setMustBeLogggedIn($value = null) : Self
    {
        $this->must_be_loggged_in = $value;
        return $this;
    }

    public function setSlug($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 128)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 128 Characters");
        }

        $this->slug = $value;
        return $this;
    }

    public function setPhotoPassword($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 128)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 128 Characters");
        }

        $this->photo_password = $value;
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