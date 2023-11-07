<?php
  include "../conexion.php";

  //if (!empty($conexion)) {

    $ubi = $_POST['ubicacion'];
    $cap = $_POST['capacidad'];
    $mozo = $_POST['mozo'];
    

    
    
    $sql = "INSERT INTO `mesas`(`ID_mozo`,`ubicacion`, `capacidad`) VALUES ('$mozo','$ubi','$cap')";
    mysqli_query($conexion, $sql) or die(mysqli_error($conexion)); 

?>
<script>
  window.location.replace("principal_mesa.php");
</script>

