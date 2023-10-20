<?php 
  //incluir la conexion a la base de datos
  INCLUDE '..\conexion.php'; 
  
 //campuro el ID_menu y lo almaceno en la variable $id.
  $id = $_REQUEST['ID_menu'];

  //Muestro el Id por pantalla.
  //echo "El ID a borrar es: ".$id;

  $borrar = "DELETE FROM menu WHERE ID_menu = $id";

  mysqli_query($conexion,$borrar);

  ?>
      <script type="text/javascript">
        window.location.replace("principal_menu.php"); 
      </script>
