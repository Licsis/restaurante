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
        #enviar{
          margin-left:25%;
        }
      </style>
    </head>
    <body>
<?php

$sql = "SELECT Imagen FROM Imagenes WHERE ID_imagen = 1";
$result = mysqli_query($conexion, $sql);

$row = mysqli_fetch_assoc($result);
//$blobData = $row['Imagen'];
//header("Content-type: image/jpeg");

//echo "IMAGEN".$blobData;

?>
    <form action="formulario4.php" name="menu2" method="post">

      <fieldset>
        <legend>Crear Imagen</legend>
        <input type="submit" id="enviar" value="Crear Imagen"><br><br>
        <input type="file" name="foto" required value="buscar foto" accept="image/jpg, image/png"><br><br><br>
        <input type="text" name="nombre_imagen" placeholder="nombre del plato"><br><br><br>
        <input type="hidden" name="menu2" value="menu2">
        <select name="num_menu">
          <option value="0" selected>--Escoja un Menú--</option>
          <?php
              //creo consulta para traer todos los datos de la tabla menú
              $sql = "SELECT * FROM Menu";
              $ejecutar = mysqli_query($conexion, $sql) or die (mysqli_error($conexion));
              while ($recorrer = mysqli_fetch_array($ejecutar)) {

              ?>
                <option value="<? echo $recorrer['ID_Menu']; ?>"><?php echo $recorrer['Nombre']; ?></option>
              <?php

               

              }
          ?>
        </select><br>
       
        
        
      </fieldset>
      
    </form>

</body>
</html>
            