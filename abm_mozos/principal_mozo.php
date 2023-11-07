<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/estilo.css">
  <title>Principal Mozos</title>


  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="../assets/animatecss/animate.css">
  <link rel="stylesheet" href="../assets/dropdown/css/style.css">
  <link rel="stylesheet" href="../assets/socicon/css/styles.css">
  <link rel="stylesheet" href="../assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="../assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="../assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  
  <section data-bs-version="5.1" class="menu menu2 cid-tL77jeuzAV" once="menu" id="menu2-1i">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container-fluid">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="index.html">
                        <img src="../assets/images/mbr-96x96.png" alt="Imagen Programación 1" style="height: 3rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-7" href="../index.html">Victor's gourmet - 2023</a></span>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-bs-toggle="collapse" data-target="#navbarSupportedContent" data-bs-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-white display-4" href="../principal_servicios.html">Servicios</a></li>
                    
                    <li class="nav-item"><a class="nav-link link text-white display-4" href="#">Contactos</a>
                    </li></ul>
                
                <div class="navbar-buttons mbr-section-btn">
                  <a class="btn btn-warning display-4" href="#">Menú</a>
                  <a class="btn btn-warning display-4" href="alta_mozo1.html">Crear <br> Mozo</a>
              </div>
            </div>
        </div>
    </nav>
</section>

<div>
    
  </div>
  <table>
    <thead>
      <tr>
        <th>Identificador</th>
        <th>Nombre Mozo</th>
        <th>DNI</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
          <?php
            include "../conexion.php";
            $sql = "SELECT * FROM mozos ORDER BY ID_mozo DESC";
            $resultado = mysqli_query($conexion,$sql);

            //var_dump($resultado);

            while ($datos = mysqli_fetch_array($resultado)) {
              $id = $datos['ID_mozo'];
              $nombre = $datos['nom_mozo'];
              $DNI = $datos['DNI_moso'];

              echo "<tr>";
                echo "<td>";
                      echo $id;
                echo "</td>";
                echo "<td>";
                      echo $nombre;
                echo "</td>";
                echo "<td>";
                      echo $DNI;
                echo "</td>";
                echo "<td id='acciones'>";
                        //creo botones para modificar y borra un menú también incluyo iconos .SVG de Font Awesom
                        echo '<a id="boton1" class="mbri-trash mbr-iconfont mbr-iconfont-btn" href="baja_mozo.php?ID_mozo='.$id.'" title="Borrar Mozo"  onClick="confirm("¿Borrar el Mozo?")">                     
                            <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512">
                              <path d="M170.5 51.6L151.5 80h145l-19-28.4c-1.5-2.2-4-3.6-6.7-3.6H177.1c-2.7 0-5.2 1.3-6.7 3.6zm147-26.6L354.2 80H368h48 8c13.3 0 24 10.7 24 24s-10.7 24-24 24h-8V432c0 44.2-35.8 80-80 80H112c-44.2 0-80-35.8-80-80V128H24c-13.3 0-24-10.7-24-24S10.7 80 24 80h8H80 93.8l36.7-55.1C140.9 9.4 158.4 0 177.1 0h93.7c18.7 0 36.2 9.4 46.6 24.9zM80 128V432c0 17.7 14.3 32 32 32H336c17.7 0 32-14.3 32-32V128H80zm80 64V400c0 8.8-7.2 16-16 16s-16-7.2-16-16V192c0-8.8 7.2-16 16-16s16 7.2 16 16zm80 0V400c0 8.8-7.2 16-16 16s-16-7.2-16-16V192c0-8.8 7.2-16 16-16s16 7.2 16 16zm80 0V400c0 8.8-7.2 16-16 16s-16-7.2-16-16V192c0-8.8 7.2-16 16-16s16 7.2 16 16z"/>
                            </svg>
                        </a>';
                        echo '<a id="boton2" class="mbri-trash mbr-iconfont mbr-iconfont-btn" href="modificar_mozo1.php?ID_mozo='.$id.'" title="Modificar Mozo"> 
                        <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512">
                          
                          <path d="M441 58.9L453.1 71c9.4 9.4 9.4 24.6 0 33.9L424 134.1 377.9 88 407 58.9c9.4-9.4 24.6-9.4 33.9 0zM209.8 256.2L344 121.9 390.1 168 255.8 302.2c-2.9 2.9-6.5 5-10.4 6.1l-58.5 16.7 16.7-58.5c1.1-3.9 3.2-7.5 6.1-10.4zM373.1 25L175.8 222.2c-8.7 8.7-15 19.4-18.3 31.1l-28.6 100c-2.4 8.4-.1 17.4 6.1 23.6s15.2 8.5 23.6 6.1l100-28.6c11.8-3.4 22.5-9.7 31.1-18.3L487 138.9c28.1-28.1 28.1-73.7 0-101.8L474.9 25C446.8-3.1 401.2-3.1 373.1 25zM88 64C39.4 64 0 103.4 0 152V424c0 48.6 39.4 88 88 88H360c48.6 0 88-39.4 88-88V312c0-13.3-10.7-24-24-24s-24 10.7-24 24V424c0 22.1-17.9 40-40 40H88c-22.1 0-40-17.9-40-40V152c0-22.1 17.9-40 40-40H200c13.3 0 24-10.7 24-24s-10.7-24-24-24H88z"/>
                        </svg>
                        
                        ';
                        echo "</td>";
              echo "</tr>";
            }
          ?>

    </tbody>
  </table>

<section data-bs-version="5.1" class="footer7 cid-tRJwh98X4c mbr-reveal" once="footers" id="footer7-1j">

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">
                    © Copyright 2023 Victor's gourmet - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
</section>
<section class="display-12" style="padding: 0;align-items: center;justify-content: center;flex-wrap: wrap;    align-content: center;display: flex;position: relative;height: 4rem;"><a href="https://mobiri.se/632529" style="flex: 1 1;height: 4rem;position: absolute;width: 100%;z-index: 1;"><img alt="" style="height: 4rem;" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="></a><p style="margin: 0;text-align: center;" class="display-7">&#8204;</p><a style="z-index:1" href="https://mobirise.com/html-builder.html">HTML Maker</a></section><script src="../assets/bootstrap/js/bootstrap.bundle.min.js"></script>  <script src="../assets/smoothscroll/smooth-scroll.js"></script>  <script src="../assets/ytplayer/index.js"></script>  <script src="../assets/dropdown/js/navbar-dropdown.js"></script>  <script src="../assets/theme/js/script.js"></script>  <script src="../assets/formoid/formoid.min.js"></script>  
  
  
  <input name="animation" type="hidden">
  </body>
</html>