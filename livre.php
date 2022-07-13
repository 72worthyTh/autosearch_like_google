<?php
 $connect = new PDO("mysql:host=localhost; dbname=encyclopedie", "root", "");

if(isset($_POST["item"]))
{
    $item=$_POST["item"];
 $query = "SELECT * FROM livre WHERE titre LIKE '%$item%' or fichier LIKE '%$item%' or couverture LIKE '%$item%' or resume LIKE '%$item%' ORDER BY titre ASC";

 $statement = $connect->prepare($query);

 $statement->execute();

 $result = $statement->fetchAll();

 $total_row = $statement->rowCount();

 $output = array();
 if($total_row > 0)
 {?>
 <br>
<div class="card">
    <div class="card-header">
       <a href="#"> Voici le résultat de votre recherche.... de: <?php echo $item?></a>
      <i> </br>Si votre resultat ne vous convient pas veille saisir tous les mots clés
        dans la zonne de recherche</i> 
    </div>
    <div class="card-body">
      

<?php
  foreach($result as $row)
  {?>



<div class="post ui-autocomplete-row" >
 <div class="user-block">
    <div class="row">
        <div class="col-3">
 <?php if($row['couverture']!=""){?>
 <img class="img-circle img-bordered-sm" src="images/<?php echo $row['couverture']?>" width="70" alt="user image">
       <?php }?>  
       </div>
       <div class="col-8" style="margin-left:-150px;">               
 <span class="username">
                          <a href="datailbook.php?book=<?php echo $row['id_livre']?>"><?php echo $row['titre']?>.</a>
                        </span>
                        <span class="description">Publié le:<?php echo $row['postdate']?> </span>
                      
                      <!-- /.user-block -->
                      <p>
                        <?php echo mb_strimwidth(utf8_decode($row['resume']), 0, 200, "..."); ?>
                      </p>

                      <p>
                        <a href="datailbook.php?book=<?php echo $row['id_livre']?>" class="link-black text-sm" ><i class="fas fa-link mr-1"></i>lire plus</a>
                      </p>
                      </div>
                      </div>
                    </div>
                      <?php echo "<hr>";}
                      
                        } 







 else
 {?>
    <br>
    <div class="card">
        <div class="card-header">
           <a href="#" > <b style="color:red ;">!! Pas de resultat correspondant à votre recherche....</b>: <?php echo $item?></a>
          <i></br> Si votre resultat ne vous convient pas veille saisir tous les mots clés
            dans la zonne de recherche</i> 
        </div>
        <div class="card-body">
            no data found......
 <?php }
}

?>
    </div>
    <div class="card-footer">
        
    </div>
</div>