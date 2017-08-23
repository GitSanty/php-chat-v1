<?php 
 session_start();
  
 
require('config.php');
 
$url1=$_SERVER['REQUEST_URI'];
header("Refresh: 5; URL=$url1");

 $stmt = $db->prepare('SELECT * FROM coversation x JOIN  members y ON ID_user=memberID  ' );
		$stmt->execute();
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);


//if form has been submitted process it
/*if(isset($_POST['submit'])){
 */
/*print_r($rows);
   	 */
    try {
 
      /* echo $stmt->rowCount();*/
         
   foreach ($rows as $row) {
    /*print $rows['image'] . "-" . $rows['ID'] ."<br/>";*/
   
    echo "<class ='container-fluid'>";
    echo "<div class ='row'>";
    
    echo "<div class ='col-md-6 col-sm-6'>";
    echo "<img class='img-responsive' width='50' height='50' src='images/$row[image]'/>";
    echo "</div>";
    
    echo "<div class ='col-md-6 col-sm-6'>";
    echo "<p> $row[message] <p/>";
    echo "</div>";   
       
    echo "</div>";
    echo "</div>";
  }

 

   } catch(PDOException $e) {
        echo "error : " . $e->getMessage();
    }


 
	/*}*/


//define page title
$title = 'Chat';

//include header template
require('header.php');
 
?>


<div class="container">

	<div class="row">


		 
	</div>

</div>

 