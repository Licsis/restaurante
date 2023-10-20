<?php
  include "conexion.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    fieldset{
      width: 25%;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      margin: 0px auto ;

    }
  </style>
</head>
<body>
  <div>
      <?php
          $menu1 = $_REQUEST['menu1'];
          
          var_dump($menu1);

          
        if ( $menu1 == "menu1"){
          echo "<h1> Insercion exitosa  </h1>";
          $nombre = $_REQUEST['nom_menu'];
          $sql1 = "INSERT INTO `Menu`(`Nombre`) VALUES('$nombre')";
          mysqli_query($conexion, $sql1);
          
        }
        else {
          Echo "<h1> Menú vacío </h1>";
        }

      ?>
      
  </div>
</body>
</html>