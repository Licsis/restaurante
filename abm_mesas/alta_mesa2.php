<?php
  include "../conexion.php";

  //if (!empty($conexion)) {

    $ubi = $_POST['ubicacion'];
    $cap = $_POST['capacidad'];
    

    
    
    $sql = "INSERT INTO `mesas`(`ubicacion`, `capacidad`) VALUES ('$ubi','$cap')";
    mysqli_query($conexion, $sql) or die(mysqli_error($conexion)); 

?>
<script>
  window.location.replace("principal_mesa.php");
</script>

