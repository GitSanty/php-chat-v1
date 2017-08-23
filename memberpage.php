<?php 

require('config.php'); 

//if not logged in redirect to login page
if(!$user->is_logged_in()){ header('Location: login.php'); } 

 
$stmt = $db->prepare('SELECT * FROM members WHERE username = :username');
		$stmt->execute(array(':username' => $_SESSION['username']));
		$row = $stmt->fetch(PDO::FETCH_ASSOC);
        
  
//define page title
$title = 'Members Page';
 
//include header template
require('header.php'); 
?>

<div class="container fluid">

	<div class="row">

	   <!-- <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">-->
         <div class="col-xs-6 col-sm-6 col-md-6">
						 
            <div class="form-group">
             	<h2> <?php echo 'Welcome: ' . $_SESSION['username']; ?> <img class="img-responsive" width="50" height="50" src ="<?php echo 'images/'. $row['image']; ?>" /></h2>
             </div>
             
             <div class="col-xs-6 col-sm-6 col-md-6">
						 
            <div class="form-group"> 
				<p><a href='logout.php'>Logout</a></p>
				
            </div>
 		</div>
	</div>

</div>

<div class="container">
   <div class="row">
     <div class="col">
      <iframe src="messages.php"></iframe>
     </div>
     
       
       <div class="embed-responsive embed-responsive-4by3">
           <iframe class="embed-responsive-item" src="sender_messager.php"></iframe>
       </div>
       
 </div>
</div>       

<?php 
//include header template
require('footer.php'); 
?>