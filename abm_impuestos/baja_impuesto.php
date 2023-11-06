<?php 
  include "../conexion.php";
  $id = $_REQUEST['ID_impuestos'];
  $sql2 = "DELETE FROM `impuestos` WHERE `ID_impuestos` =  $id";
  mysqli_query($conexion, $sql2) or die(mysqli_error($conexion)); 

?>

    <script type = "text/javascript">
        window.location.replace("principal_impuesto.php");
    </script>