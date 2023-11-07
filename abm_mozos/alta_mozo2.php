<?php
  include "../conexion.php";

  //if (!empty($conexion)) {

    $nombre_imp = $_POST['nom_mozo'];
    $porcentaje = $_POST['DNI'];
    
    
    $sql = "INSERT INTO `mozos`(`nom_mozo`, `DNI_moso`) VALUES ('$nombre_imp','$porcentaje')";
    mysqli_query($conexion, $sql) or die(mysqli_error($conexion)); 



?>
 <script type = "text/javascript">
      window.location.replace("principal_mozo.php");
   </script>
