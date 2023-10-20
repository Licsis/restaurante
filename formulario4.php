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
          $menu2 = $_REQUEST['menu2'];
          var_dump($menu2);

        if ($menu2 == "menu2") {
          echo "<h1> IMAGEN INSERTADA EXITOSAMENTE 2  </h1>";
          $foto = $_REQUEST['foto'];
          $imagen = $_REQUEST['nombre_imagen'];
          $menu = $_REQUEST['num_menu'];



          $sql1 = "INSERT INTO `Imagenes`(`Nombre`,`imagen`, `ID_Menu`) VALUES('$imagen','$foto','$menu')  ";
          mysqli_query($conexion, $sql1);
        }
        else {
          Echo "<h1> Menú vacío </h1>";
        }

      ?>
      
  </div>
</body>
</html>