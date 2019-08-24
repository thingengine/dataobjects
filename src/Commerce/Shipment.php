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

class Shipment extends DataObject
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $shipped_by_token;
    protected $shipping_carrier;
    protected $shipping_status;
    protected $shipping_service;
    protected $shipping_cost;
    protected $packaging_cost;
    protected $tracking_number;
    protected $quantity;
    protected $signature_required;
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

    public function getShippedByToken()
    {
        return $this->shipped_by_token;
    }

    public function getShippingCarrier()
    {
        return $this->shipping_carrier;
    }

    public function getShippingStatus()
    {
        return $this->shipping_status;
    }

    public function getShippingService()
    {
        return $this->shipping_service;
    }

    public function getShippingCost()
    {
        return $this->shipping_cost;
    }

    public function getPackagingCost()
    {
        return $this->packaging_cost;
    }

    public function getTrackingNumber()
    {
        return $this->tracking_number;
    }

    public function getQuantity()
    {
        return $this->quantity;
    }

    public function getSignatureRequired()
    {
        return $this->signature_required;
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

    public function setShippedByToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->shipped_by_token = $value;
        return $this;
    }

    public function setShippingCarrier($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 64)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 64 Characters");
        }

        $this->shipping_carrier = $value;
        return $this;
    }

    public function setShippingStatus($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->shipping_status = $value;
        return $this;
    }

    public function setShippingService($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->shipping_service = $value;
        return $this;
    }

    public function setShippingCost($value = null) : Self
    {
        $this->shipping_cost = $value;
        return $this;
    }

    public function setPackagingCost($value = null) : Self
    {
        $this->packaging_cost = $value;
        return $this;
    }

    public function setTrackingNumber($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 64)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 64 Characters");
        }

        $this->tracking_number = $value;
        return $this;
    }

    public function setQuantity($value = null) : Self
    {
        $this->quantity = $value;
        return $this;
    }

    public function setSignatureRequired($value = null) : Self
    {
        $this->signature_required = $value;
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