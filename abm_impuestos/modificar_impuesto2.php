<?php

  include "../conexion.php";
  $nombre = $_REQUEST['nom_impuesto'];
  $porcentaje =  $_REQUEST['porcentaje'];
  $id = $_REQUEST['ID_impuesto'];

    echo $nombre."<br>";
    echo $porcentaje."<br>";
    echo  $id."<br>";

 
   $sql = "UPDATE `impuestos` SET `nom_impuesto`= '$nombre',`porcentaje`='$porcentaje' WHERE ID_impuesto = $id" ;

   mysqli_query($conexion,$sql);

   //var_dump($sql);
   
   ?>
   <script type = "text/javascript">
      window.location.replace("principal_impuesto.php");
   </script>