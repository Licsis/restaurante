<?php 
  include "../conexion.php";
  $id = $_REQUEST['ID_mesa'];
  $sql2 = "DELETE FROM `mesas` WHERE `ID_mesa` = $id ";
  mysqli_query($conexion, $sql2) or die(mysqli_error($conexion)); 

?>

<script>
  window.location.replace("principal_mesa.php");
</script>