# DataObjects
PHP Based Data Objects to speed up CRUD development


## Examples
    
###SELECT
    
    //Initiate Query with PDO, Table Name, and DataObject Class Name
    $query = new ThingEngine\DataObjects\Query(PDO, "te_article", "ThingEngine\DataObjects\Content\Article");
    
    //Loop through using request pagination (?p=2&pp=3)
    foreach( $query->where("created_at",">","2019-01-01 00:00:00")->paginateByRequest()->orderBy("id","DESC")->fetchAll() as $article)
    echo "<P>".$article->getArticleTitle() . " ". $article->getToken();
        
###CREATE

    //Should be wrapped in a try/catch and add PDO Transaction for best results
    $query = new ThingEngine\DataObjects\Query(PDO, "te_article", "ThingEngine\DataObjects\Content\Article");
    $article = new ThingEngine\DataObjects\Content\Article();
    $article->defaultValues();
    $article->addValues($_REQUEST);
    $query->save($article->toArray());

 ###READ 
 
    $query = new ThingEngine\DataObjects\Query(PDO, "te_article", "ThingEngine\DataObjects\Content\Article");
    foreach( $query->where("token","=",$token)->fetchAll() as $article)
    echo "<P>".$article->getArticleTitle() . " ". $article->getToken();
