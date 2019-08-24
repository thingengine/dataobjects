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

class ShopOrder extends DataObject
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $shop_token;
    protected $sub_total;
    protected $tax_total;
    protected $discount_total;
    protected $coupon_total;
    protected $grand_total;
    protected $fees_total;
    protected $total_items;
    protected $date_purchased;
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

    public function getShopToken()
    {
        return $this->shop_token;
    }

    public function getSubTotal()
    {
        return $this->sub_total;
    }

    public function getTaxTotal()
    {
        return $this->tax_total;
    }

    public function getDiscountTotal()
    {
        return $this->discount_total;
    }

    public function getCouponTotal()
    {
        return $this->coupon_total;
    }

    public function getGrandTotal()
    {
        return $this->grand_total;
    }

    public function getFeesTotal()
    {
        return $this->fees_total;
    }

    public function getTotalItems()
    {
        return $this->total_items;
    }

    public function getDatePurchased()
    {
        return $this->date_purchased;
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

    public function setShopToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->shop_token = $value;
        return $this;
    }

    public function setSubTotal($value = null) : Self
    {
        $this->sub_total = $value;
        return $this;
    }

    public function setTaxTotal($value = null) : Self
    {
        $this->tax_total = $value;
        return $this;
    }

    public function setDiscountTotal($value = null) : Self
    {
        $this->discount_total = $value;
        return $this;
    }

    public function setCouponTotal($value = null) : Self
    {
        $this->coupon_total = $value;
        return $this;
    }

    public function setGrandTotal($value = null) : Self
    {
        $this->grand_total = $value;
        return $this;
    }

    public function setFeesTotal($value = null) : Self
    {
        $this->fees_total = $value;
        return $this;
    }

    public function setTotalItems($value = null) : Self
    {
        $this->total_items = $value;
        return $this;
    }

    public function setDatePurchased($value = null) : Self
    {
        $this->date_purchased = $value;
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