# DataObjects
PHP Based Data Objects to speed up CRUD development

- Data Objects intend to be as generic and useful as can be in a Schema.org manner
- All tables are created with an Autoincrement ID and a Token (UUID)
- All tables include at least one ref_token to match ownership
- All tables have created_at, updated_at, deleted_at timestamps
- All tables have created_by, updated_by, deleted_by token fields for tracking. 
- Query class includes build in paging and other simple Query Builder commands for ease of use.
- Query class uses (PDO::FETCH_CLASS, 'ThingEngine\DataObjects\*') to return data objects

## INSTALL

    composer require thingengine/dataobjects

## REQUIREMENTS

    "require": {
        "php": ">=7.2.0",
        "respect/validation": "^1.1",
        "ramsey/uuid": "^3.8"
    },



## Examples
    
SELECT
    
    //Initiate Query with PDO, Table Name, and DataObject Class Name
    $query = new ThingEngine\DataObjects\Query(PDO, "te_article", "ThingEngine\DataObjects\Content\Article");
    
    //Loop through using request pagination (?p=2&pp=3)
    foreach( $query->where("created_at",">","2019-01-01 00:00:00")->paginateByRequest()->orderBy("id","DESC")->fetchAll() as $article)
    echo "<P>".$article->getArticleTitle() . " ". $article->getToken();
        
CREATE

    //Should be wrapped in a try/catch and add PDO Transaction for best results
    $query = new ThingEngine\DataObjects\Query(PDO, "te_article", "ThingEngine\DataObjects\Content\Article");
    $article = new ThingEngine\DataObjects\Content\Article();
    $article->defaultValues();
    $article->addValues($_REQUEST);
    $query->save($article->toArray());

 READ 
 
    $query = new ThingEngine\DataObjects\Query(PDO, "te_article", "ThingEngine\DataObjects\Content\Article");
    foreach( $query->where("token","=",$token)->fetchAll() as $article)
    echo "<P>".$article->getArticleTitle() . " ". $article->getToken();
