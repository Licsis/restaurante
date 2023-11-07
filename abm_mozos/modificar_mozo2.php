<?php

  include "../conexion.php";
  $nombre = $_REQUEST['nom_mozo'];
  $DNI =  $_REQUEST['DNI'];
  $id = $_REQUEST['ID_mozo'];

    echo $nombre."<br>";
    echo $DNI."<br>";
    echo  $id."<br>";

 
   $sql = "UPDATE `mozos` SET `nom_mozo`= '$nombre',`DNI_moso`='$DNI' WHERE ID_mozo = $id" ;

   mysqli_query($conexion,$sql);

   //var_dump($sql);
   
   ?>
   <script type = "text/javascript">
      window.location.replace("principal_mozo.php");
   </script>