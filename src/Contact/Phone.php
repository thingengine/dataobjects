<?PHP
declare(strict_types=1);
/*
 * (c) ThingEngine Team
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */
namespace ThingEngine\DataObjects\Contact;

use Respect\Validation\Validator as Validator;
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;
use ThingEngine\DataObjects\DataObject;

class Phone extends DataObject
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $phone_number;
    protected $phone_extension;
    protected $country;
    protected $phone_type;
    protected $for_business;
    protected $allow_sms;
    protected $is_primary;
    protected $is_public;
    protected $label;
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

    public function getPhoneNumber()
    {
        return $this->phone_number;
    }

    public function getPhoneExtension()
    {
        return $this->phone_extension;
    }

    public function getCountry()
    {
        return $this->country;
    }

    public function getPhoneType()
    {
        return $this->phone_type;
    }

    public function getForBusiness()
    {
        return $this->for_business;
    }

    public function getAllowSms()
    {
        return $this->allow_sms;
    }

    public function getIsPrimary()
    {
        return $this->is_primary;
    }

    public function getIsPublic()
    {
        return $this->is_public;
    }

    public function getLabel()
    {
        return $this->label;
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

    public function setPhoneNumber($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 16)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 16 Characters");
        }

        $this->phone_number = $value;
        return $this;
    }

    public function setPhoneExtension($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 8)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 8 Characters");
        }

        $this->phone_extension = $value;
        return $this;
    }

    public function setCountry($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 3)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 3 Characters");
        }

        $this->country = $value;
        return $this;
    }

    public function setPhoneType($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 16)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 16 Characters");
        }

        $this->phone_type = $value;
        return $this;
    }

    public function setForBusiness($value = null) : Self
    {
        $this->for_business = $value;
        return $this;
    }

    public function setAllowSms($value = null) : Self
    {
        $this->allow_sms = $value;
        return $this;
    }

    public function setIsPrimary($value = null) : Self
    {
        $this->is_primary = $value;
        return $this;
    }

    public function setIsPublic($value = null) : Self
    {
        $this->is_public = $value;
        return $this;
    }

    public function setLabel($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 32)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 32 Characters");
        }

        $this->label = $value;
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