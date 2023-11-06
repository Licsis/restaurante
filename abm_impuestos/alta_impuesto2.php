<?php
  include "../conexion.php";

  //if (!empty($conexion)) {

    $nombre_imp = $_POST['nom_impuesto']; 
    $porcentaje = $_POST['porcentaje'];
    

    //echo "El porcentaje es: ".$porcentaje;
    //echo "El nombre del IVA es: ".$nombre_imp;
    
    $sql = "INSERT INTO `impuestos`(`nom_IMPUESTO`, `porcentaje`) VALUES ('$nombre_imp','$porcentaje')";
    mysqli_query($conexion, $sql) or die(mysqli_error($conexion)); 

?>
<script>

  window.location.replace("principal_impuesto.php");
</script>

