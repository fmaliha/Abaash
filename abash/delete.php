<?php

$connection = mysqli_connect("localhost", "root", "","ab");

$un = $_POST['un'];

$q = " DELETE * FROM `regi` WHERE un = $un ";

mysqli_query($connection, $q);



?>