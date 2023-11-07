<?php 
  include "../conexion.php";
  $id = $_REQUEST['ID_impuesto'];
  $sql2 = "DELETE FROM `impuestos` WHERE `ID_impuesto` =  $id";
  mysqli_query($conexion, $sql2) or die(mysqli_error($conexion)); 

?>

    <script type = "text/javascript">
        window.location.replace("principal_impuesto.php");
    </script>