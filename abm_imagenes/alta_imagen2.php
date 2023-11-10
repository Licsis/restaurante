<?php
  include "../conexion.php";
    
       $imageName = $_REQUEST['nombre'];

       $target_dir = "../img/"; // Directorio donde se guardarán las imágenes
       $target_file = $target_dir . basename($_FILES["foto"]["name"]);
       $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
       
       // Verificar si el archivo es una imagen
       $check = getimagesize($_FILES["foto"]["tmp_name"]);
       if ($check === false) {
           echo "El archivo no es una imagen.";
           exit();
       }
       
       // Cargar la imagen en la base de datos
       $imageData = file_get_contents($_FILES["foto"]["tmp_name"]);
       $sql = "INSERT INTO `imagenes` (`nom_imagen`, `foto`) VALUES ('$imageName', '$imageData')";

       mysqli_query($conexion,$sql);
      
      
       $conexion->close();
  
?>
<script type = "text/javascript">
        //window.location.replace("principal_impuesto.php");
    </script>