<?PHP
declare(strict_types=1);
/*
 * (c) ThingEngine Team
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */
namespace ThingEngine\DataObjects\Common;

use Respect\Validation\Validator as Validator;
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;
use ThingEngine\DataObjects\DataObject;

class Organization extends DataObject
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $name;
    protected $organization_type;
    protected $slug;
    protected $year_established;
    protected $dates_active;
    protected $description;
    protected $is_active;
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

    public function getName()
    {
        return $this->name;
    }

    public function getOrganizationType()
    {
        return $this->organization_type;
    }

    public function getSlug()
    {
        return $this->slug;
    }

    public function getYearEstablished()
    {
        return $this->year_established;
    }

    public function getDatesActive()
    {
        return $this->dates_active;
    }

    public function getDescription()
    {
        return $this->description;
    }

    public function getIsActive()
    {
        return $this->is_active;
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

    public function setName($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 255)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 255 Characters");
        }

        $this->name = $value;
        return $this;
    }

    public function setOrganizationType($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->organization_type = $value;
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

    public function setYearEstablished($value = null) : Self
    {
        $this->year_established = $value;
        return $this;
    }

    public function setDatesActive($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 32)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 32 Characters");
        }

        $this->dates_active = $value;
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