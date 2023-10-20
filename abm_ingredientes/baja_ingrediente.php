<?php 
  include "../conexion.php";
  $sql2 = "DELETE FROM `impuestos` WHERE `ID_impuestos` = 6 ";
  mysqli_query($conexion, $sql2) or die(mysqli_error($conexion)); 

?>