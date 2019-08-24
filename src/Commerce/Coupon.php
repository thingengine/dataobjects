<?PHP
declare(strict_types=1);
/*
 * (c) ThingEngine Team
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */
namespace ThingEngine\DataObjects\Commerce;

use Respect\Validation\Validator as Validator;
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;
use ThingEngine\DataObjects\DataObject;

class Coupon extends DataObject
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $coupon_code;
    protected $coupon_type;
    protected $is_active;
    protected $must_be_loggged_in;
    protected $can_by_combined;
    protected $minimum_subtotal;
    protected $discount_type;
    protected $discount_amount;
    protected $number_of_uses;
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

    public function getCouponCode()
    {
        return $this->coupon_code;
    }

    public function getCouponType()
    {
        return $this->coupon_type;
    }

    public function getIsActive()
    {
        return $this->is_active;
    }

    public function getMustBeLogggedIn()
    {
        return $this->must_be_loggged_in;
    }

    public function getCanByCombined()
    {
        return $this->can_by_combined;
    }

    public function getMinimumSubtotal()
    {
        return $this->minimum_subtotal;
    }

    public function getDiscountType()
    {
        return $this->discount_type;
    }

    public function getDiscountAmount()
    {
        return $this->discount_amount;
    }

    public function getNumberOfUses()
    {
        return $this->number_of_uses;
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

    public function setCouponCode($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 16)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 16 Characters");
        }

        $this->coupon_code = $value;
        return $this;
    }

    public function setCouponType($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 8)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 8 Characters");
        }

        $this->coupon_type = $value;
        return $this;
    }

    public function setIsActive($value = null) : Self
    {
        $this->is_active = $value;
        return $this;
    }

    public function setMustBeLogggedIn($value = null) : Self
    {
        $this->must_be_loggged_in = $value;
        return $this;
    }

    public function setCanByCombined($value = null) : Self
    {
        $this->can_by_combined = $value;
        return $this;
    }

    public function setMinimumSubtotal($value = null) : Self
    {
        $this->minimum_subtotal = $value;
        return $this;
    }

    public function setDiscountType($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 16)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 16 Characters");
        }

        $this->discount_type = $value;
        return $this;
    }

    public function setDiscountAmount($value = null) : Self
    {
        $this->discount_amount = $value;
        return $this;
    }

    public function setNumberOfUses($value = null) : Self
    {
        $this->number_of_uses = $value;
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