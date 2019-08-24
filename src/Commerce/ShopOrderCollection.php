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

class ShopOrderCollection extends DataObject
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $order_token;
    protected $parent_token;
    protected $collection_type;
    protected $status;
    protected $sku;
    protected $title;
    protected $quantity;
    protected $shippable;
    protected $customer_pickup;
    protected $price_per_item;
    protected $tax_total;
    protected $discount_total;
    protected $coupon_total;
    protected $fees_total;
    protected $grand_total;
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

    public function getOrderToken()
    {
        return $this->order_token;
    }

    public function getParentToken()
    {
        return $this->parent_token;
    }

    public function getCollectionType()
    {
        return $this->collection_type;
    }

    public function getStatus()
    {
        return $this->status;
    }

    public function getSku()
    {
        return $this->sku;
    }

    public function getTitle()
    {
        return $this->title;
    }

    public function getQuantity()
    {
        return $this->quantity;
    }

    public function getShippable()
    {
        return $this->shippable;
    }

    public function getCustomerPickup()
    {
        return $this->customer_pickup;
    }

    public function getPricePerItem()
    {
        return $this->price_per_item;
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

    public function getFeesTotal()
    {
        return $this->fees_total;
    }

    public function getGrandTotal()
    {
        return $this->grand_total;
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

    public function setOrderToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->order_token = $value;
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

    public function setCollectionType($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->collection_type = $value;
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

    public function setSku($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->sku = $value;
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

    public function setQuantity($value = null) : Self
    {
        $this->quantity = $value;
        return $this;
    }

    public function setShippable($value = null) : Self
    {
        $this->shippable = $value;
        return $this;
    }

    public function setCustomerPickup($value = null) : Self
    {
        $this->customer_pickup = $value;
        return $this;
    }

    public function setPricePerItem($value = null) : Self
    {
        $this->price_per_item = $value;
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

    public function setFeesTotal($value = null) : Self
    {
        $this->fees_total = $value;
        return $this;
    }

    public function setGrandTotal($value = null) : Self
    {
        $this->grand_total = $value;
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