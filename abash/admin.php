<!DOCTYPE html>
<html>
<head>
 <title>Admin Panel</title>
<link rel="icon"  href="img/logo.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
 <link href='css/style.css' rel='stylesheet'>
  <script src="js/adreg.js"></script>
    
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 70%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
  
 

</head>
<body>
 <div class="logo_menu">
      <div class="neon">
        <img src="img/logo.png">
      </div>
  
    <ul class="main-nav">
        <li class="active"><a href="adreg.php">Create Admin</a></li>  
         <li class="active"><a href="index.php">Logout</a></li> 
    </ul>
   </div>
   
  <div class="container">
 <div class="col-lg-12">
  <br><br>
  <h1 class="text-warning text-center" > Display All User Data </h1>
  <br>
  <table  id="tabledata" class=" table table-striped table-hover table-bordered">
   
   <tr class="bg-dark text-white text-center">
    
    <th> Id </th>
    <th> Username </th>
    <th> Password </th>
    <th> Delete </th>
    <th> Update </th>

    </tr >

  <?php

    $connection = mysqli_connect("localhost", "root", "","ab");
   $q = "select * from regi ";

    $query = mysqli_query($connection,$q);

    while($res = mysqli_fetch_array($query)){
 ?>
   <tr class="text-center">
    <td> <?php echo $res['id'];  ?> </td>
    <td> <?php echo $res['un'];  ?> </td>
    <td> <?php echo $res['pw'];  ?> </td>
    <td> <button class="btn-danger btn"> <a href="delete.php?id=<?php echo $res['un']; ?>" class="text-white"> Delete </a>  </button> </td>
    <td> <button class="btn-primary btn"> <a href="update.php?id=<?php echo $res['un']; ?>" class="text-white"> Update </a> </button> </td>

    </tr>

   <?php 
   }
   ?>
   
  </table>  

  </div>
 </div>

  <div class="container">
 <div class="col-lg-12">
  <br><br>
  <h1 class="text-warning text-center" > Display All Post Data </h1>
  <br>
  <table  id="tabledata" class=" table table-striped table-hover table-bordered">
   
   <tr class="bg-dark text-white text-center">
    
    
    <th> Username </th>
       <th>Email </th>
        <th>Contact No </th>
       <th>Address Of Rent House </th>
       <th>Rent Price Of House</th>
       <th>Available Date </th>
       <th>House Type</th>


    <th> Delete </th>
    <th> Update </th>

    </tr >

  <?php

    $connection = mysqli_connect("localhost", "root", "","ab");
   $q = "select * from post ";

    $query = mysqli_query($connection,$q);

    while($res = mysqli_fetch_array($query)){
 ?>
   <tr class="text-center">
    <td> <?php echo $res['un'];  ?> </td>
    <td> <?php echo $res['email'];  ?> </td>
    <td> <?php echo $res['phone_no'];  ?> </td>
    <td> <?php echo $res['address'];  ?> </td>
    <td> <?php echo $res['rent_price'];  ?> </td>
    <td> <?php echo $res['date_a'];  ?> </td>
    <td> <?php echo $res['type'];  ?> </td>
    <td> <button class="btn-danger btn"> <a href="delete.php?id=<?php echo $res['un']; ?>" class="text-white"> Delete </a>  </button> </td>
    <td> <button class="btn-primary btn"> <a href="update.php?id=<?php echo $res['un']; ?>" class="text-white"> Update </a> </button> </td>

    </tr>

   <?php 
   }
   ?>
   
  </table>  

  </div>
 </div>



  <script type="text/javascript">
  
  $(document).ready(function(){
   $('#tabledata').DataTable();
  }) 
  
 </script>

</body>
</html>
