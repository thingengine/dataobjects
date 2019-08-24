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

class InvoiceItem extends DataObject
{

    protected $id;
    protected $token;
    protected $invoice_token;
    protected $ref_token;
    protected $ref_token_2;
    protected $name;
    protected $description;
    protected $status;
    protected $quantity;
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

    public function getInvoiceToken()
    {
        return $this->invoice_token;
    }

    public function getRefToken()
    {
        return $this->ref_token;
    }

    public function getRefToken2()
    {
        return $this->ref_token_2;
    }

    public function getName()
    {
        return $this->name;
    }

    public function getDescription()
    {
        return $this->description;
    }

    public function getStatus()
    {
        return $this->status;
    }

    public function getQuantity()
    {
        return $this->quantity;
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

    public function setInvoiceToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->invoice_token = $value;
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

    public function setName($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 128)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 128 Characters");
        }

        $this->name = $value;
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

    public function setStatus($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->status = $value;
        return $this;
    }

    public function setQuantity($value = null) : Self
    {
        $this->quantity = $value;
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