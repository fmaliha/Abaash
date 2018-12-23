
<?php

  $connection = mysqli_connect("localhost", "root", "","ab");

  if(isset($_POST['done'])){

   $id = $_GET['id'];
  $username = $_POST['un'];
  $password = $_POST['pw'];
  $q = " update regi  un='$un', pw='$pw' where id=$id  ";

   $query = mysqli_query($con,$q);

   header('location:display.php');
 }

?>

<!DOCTYPE html>
<html>
<head>
 <title>Update</title>
 <link rel="icon"  href="img/logo.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
 
</head>
<body>

  <div class="col-lg-6 m-auto">
  
  <form method="post">
   
   <br><br><div class="card">
    
    <div class="card-header bg-dark">
     <h1 class="text-white text-center">  Update Operation </h1>
    </div><br>

     <label> Username: </label>
    <input type="text" name="username" class="form-control"> <br>

     <label> Password: </label>
    <input type="text" name="password" class="form-control"> <br>

     <button class="btn btn-success" type="submit" name="done"> Submit </button><br>

    </div>
  </form>
 </div>
</body>
</html>