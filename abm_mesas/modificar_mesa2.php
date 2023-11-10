<?php
  include "../conexion.php";
  $id = $_REQUEST['ID_mesa'];
  $ubicacion = $_REQUEST['ubicacion'];
  $nombre = $_REQUEST['nom_mozo'];
  $cap = $_REQUEST['capacidad'];

    $sql = "UPDATE `mesas` SET `ID_mozo`='$nombre',`ubicacion`='$ubicacion',`capacidad`='$cap' WHERE ID_mesa = $id";

    mysqli_query($conexion,$sql);

?>
<script>
  window.location.replace("principal_mesa.php");
</script>
