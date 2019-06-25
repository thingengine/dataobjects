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

class Product
{

    protected $id;
    protected $token;
    protected $ref_token;
    protected $variation_of_token;
    protected $sku;
    protected $slug;
    protected $type_token;
    protected $brand_token;
    protected $title;
    protected $excerpt;
    protected $description;
    protected $is_active;
    protected $featured;
    protected $price;
    protected $discount_price;
    protected $map_price;
    protected $list_price;
    protected $stock;
    protected $digital_download;
    protected $digital_file;
    protected $height;
    protected $length;
    protected $width;
    protected $size_measurement;
    protected $weight;
    protected $weight_measurement;
    protected $subtract_stock;
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


    /**
     * @return null
     */
    public function toArray(){

        foreach(get_object_vars ( $this ) as $property=>$value){
            $func = "get".str_replace("_", "", ucwords($property, "_"));
            if (method_exists($this, $func)){
                $value = $this->$func();
                if(!is_null($value)){
                    $data[$property] = $this->$func();
                }
            }
        }

        return $data ?? null;
    }


    /**
     * @param $property
     * @return mixed
     */
    public function __get($property) {

        $func = "get".str_replace("_", "", ucwords($property, "_"));
        if (method_exists($this, $func)){
            return $this->$func();
        }
    }


    /**
     * @param $property
     * @param $value
     * @return mixed
     */
    public function __set($property, $value) {
        $func = "set".str_replace("_", "", ucwords($property, "_"));
        if (method_exists($this, $func)){
            return $this->$func($value);
        }
    }


    /**
     * @param array $data
     * @return $this
     * @throws \Exception
     */
    public function addValues(Array $data)
    {

        try {
            if (!empty($data)) {
                foreach ($data as $key => $value) {
                    // We are going to set the value, this will handle filters
                    $set_func = "set" . str_replace("_", "", ucwords($key, "_"));
                    if (method_exists($this, $set_func)) {
                        if (is_numeric($value)) {
                            $value = (int)$value;
                        }
                        $this->$set_func($value);
                    }

                }
            }

        } catch(\InvalidArgumentException $e){
            throw new \InvalidArgumentException($e->getMessage(), $e->getCode(), $e);
        } catch (\TypeError $e) {
            throw new \TypeError($e->getMessage(), $e->getCode(), $e);
        } catch (\Exception $e) {
            throw new \Exception($e->getMessage(), $e->getCode(), $e);
        }

        return $this;
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

    public function getVariationOfToken()
    {
        return $this->variation_of_token;
    }

    public function getSku()
    {
        return $this->sku;
    }

    public function getSlug()
    {
        return $this->slug;
    }

    public function getTypeToken()
    {
        return $this->type_token;
    }

    public function getBrandToken()
    {
        return $this->brand_token;
    }

    public function getTitle()
    {
        return $this->title;
    }

    public function getExcerpt()
    {
        return $this->excerpt;
    }

    public function getDescription()
    {
        return $this->description;
    }

    public function getIsActive()
    {
        return $this->is_active;
    }

    public function getFeatured()
    {
        return $this->featured;
    }

    public function getPrice()
    {
        return $this->price;
    }

    public function getDiscountPrice()
    {
        return $this->discount_price;
    }

    public function getMapPrice()
    {
        return $this->map_price;
    }

    public function getListPrice()
    {
        return $this->list_price;
    }

    public function getStock()
    {
        return $this->stock;
    }

    public function getDigitalDownload()
    {
        return $this->digital_download;
    }

    public function getDigitalFile()
    {
        return $this->digital_file;
    }

    public function getHeight()
    {
        return $this->height;
    }

    public function getLength()
    {
        return $this->length;
    }

    public function getWidth()
    {
        return $this->width;
    }

    public function getSizeMeasurement()
    {
        return $this->size_measurement;
    }

    public function getWeight()
    {
        return $this->weight;
    }

    public function getWeightMeasurement()
    {
        return $this->weight_measurement;
    }

    public function getSubtractStock()
    {
        return $this->subtract_stock;
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

    public function setVariationOfToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->variation_of_token = $value;
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

    public function setSlug($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 128)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 128 Characters");
        }

        $this->slug = $value;
        return $this;
    }

    public function setTypeToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->type_token = $value;
        return $this;
    }

    public function setBrandToken($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 36)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 36 Characters");
        }

        $this->brand_token = $value;
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

    public function setExcerpt($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 255)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 255 Characters");
        }

        $this->excerpt = $value;
        return $this;
    }

    public function setDescription($value = null) : Self
    {
        $this->description = $value;
        return $this;
    }

    public function setIsActive($value = null) : Self
    {
        $this->is_active = $value;
        return $this;
    }

    public function setFeatured($value = null) : Self
    {
        $this->featured = $value;
        return $this;
    }

    public function setPrice($value = null) : Self
    {
        $this->price = $value;
        return $this;
    }

    public function setDiscountPrice($value = null) : Self
    {
        $this->discount_price = $value;
        return $this;
    }

    public function setMapPrice($value = null) : Self
    {
        $this->map_price = $value;
        return $this;
    }

    public function setListPrice($value = null) : Self
    {
        $this->list_price = $value;
        return $this;
    }

    public function setStock($value = null) : Self
    {
        $this->stock = $value;
        return $this;
    }

    public function setDigitalDownload($value = null) : Self
    {
        $this->digital_download = $value;
        return $this;
    }

    public function setDigitalFile($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 64)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 64 Characters");
        }

        $this->digital_file = $value;
        return $this;
    }

    public function setHeight($value = null) : Self
    {
        $this->height = $value;
        return $this;
    }

    public function setLength($value = null) : Self
    {
        $this->length = $value;
        return $this;
    }

    public function setWidth($value = null) : Self
    {
        $this->width = $value;
        return $this;
    }

    public function setSizeMeasurement($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 8)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 8 Characters");
        }

        $this->size_measurement = $value;
        return $this;
    }

    public function setWeight($value = null) : Self
    {
        $this->weight = $value;
        return $this;
    }

    public function setWeightMeasurement($value = null) : Self
    {
        if(!Validator::stringType()->length(1, 8)->validate($value))
        {
            throw new \InvalidArgumentException("token must be between 1 and 8 Characters");
        }

        $this->weight_measurement = $value;
        return $this;
    }

    public function setSubtractStock($value = null) : Self
    {
        $this->subtract_stock = $value;
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