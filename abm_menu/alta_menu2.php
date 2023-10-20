<?php
  include "../conexion.php";
  $nombre = $_REQUEST['nombre_menu']; 
  $precio = $_REQUEST['precio']; 

  echo "<h2> El resultado es: ".$precio."</h2>";
  echo "<h2> El resultado es: ".$nombre."</h2>";

  $sql = "INSERT INTO menu (`nombre`,`precio`) VALUES('$nombre','$precio')";

    mysqli_query($conexion,$sql);

    ?>
    <script type = "text/javascript">
        window.location.replace("alta_menu1.html");
    </script>