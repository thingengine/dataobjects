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

class Address extends DataObject
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $street_1;
    protected $street_2;
    protected $street_3;
    protected $post_office_box;
    protected $suite_apartment;
    protected $locality;
    protected $region;
    protected $postal_code;
    protected $country;
    protected $address_type;
    protected $is_primary;
    protected $is_public;
    protected $label;
    protected $latitude;
    protected $longitude;
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

    public function getStreet1()
    {
        return $this->street_1;
    }

    public function getStreet2()
    {
        return $this->street_2;
    }

    public function getStreet3()
    {
        return $this->street_3;
    }

    public function getPostOfficeBox()
    {
        return $this->post_office_box;
    }

    public function getSuiteApartment()
    {
        return $this->suite_apartment;
    }

    public function getLocality()
    {
        return $this->locality;
    }

    public function getRegion()
    {
        return $this->region;
    }

    public function getPostalCode()
    {
        return $this->postal_code;
    }

    public function getCountry()
    {
        return $this->country;
    }

    public function getAddressType()
    {
        return $this->address_type;
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

    public function getLatitude()
    {
        return $this->latitude;
    }

    public function getLongitude()
    {
        return $this->longitude;
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

    public function setStreet1($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 255)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 255 Characters");
        }

        $this->street_1 = $value;
        return $this;
    }

    public function setStreet2($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 128)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 128 Characters");
        }

        $this->street_2 = $value;
        return $this;
    }

    public function setStreet3($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 128)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 128 Characters");
        }

        $this->street_3 = $value;
        return $this;
    }

    public function setPostOfficeBox($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 16)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 16 Characters");
        }

        $this->post_office_box = $value;
        return $this;
    }

    public function setSuiteApartment($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 16)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 16 Characters");
        }

        $this->suite_apartment = $value;
        return $this;
    }

    public function setLocality($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 64)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 64 Characters");
        }

        $this->locality = $value;
        return $this;
    }

    public function setRegion($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 64)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 64 Characters");
        }

        $this->region = $value;
        return $this;
    }

    public function setPostalCode($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 12)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 12 Characters");
        }

        $this->postal_code = $value;
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

    public function setAddressType($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->address_type = $value;
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

    public function setLatitude($value = null) : Self
    {
        $this->latitude = $value;
        return $this;
    }

    public function setLongitude($value = null) : Self
    {
        $this->longitude = $value;
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