<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Principal Impuestos</title>
</head>
<body>
  <div>
    <a href="alta_impuesto1.html"><button>Crear Impuesto</button></a>
  </div>
  <table>
    <thead>
      <tr>
        <td>Identificador</td>
        <td>Nombre Impuesto</td>
        <td>Porcentaje</td>
        <td>Acciones</td>
      </tr>
    </thead>
    <tbody>
          <?php
            include "../conexion.php";
            $sql = "SELECT * FROM impuestos ORDER BY ID_impuestos DESC";
            $resultado = mysqli_query($conexion,$sql);

            //var_dump($resultado);

            while ($datos = mysqli_fetch_array($resultado)) {
              $id = $datos['ID_impuestos'];
              $nombre = $datos['nombre'];
              $porcentaje = $datos['porcentaje'];

              echo "<tr>";
                echo "<td>";
                      echo $id;
                echo "</td>";
                echo "<td>";
                      echo $nombre;
                echo "</td>";
                echo "<td>";
                      echo $porcentaje;
                echo "</td>";
                echo "<td>";
                      echo "aquí van las acciones" ;
                echo "</td>";
              echo "<tr>";

            }
          ?>

    </tbody>
  </table>
  
</body>
</html>