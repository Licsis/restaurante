<?php 
  include "../conexion.php";
  $id = $_REQUEST['ID_mozo'] ;
  $sql2 = "DELETE FROM `mozos` WHERE `ID_mozo` = $id ";
  mysqli_query($conexion, $sql2) or die(mysqli_error($conexion)); 

?>
<script>
  window.location.replace("principal_mozo.php");
</script>