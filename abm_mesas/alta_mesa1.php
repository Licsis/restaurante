<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.6.8, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.6.8, mobirise.com">
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content="">
  <meta property="og:image" content="">
  <meta name="twitter:title" content="Altas">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="../assets/images/mbr-96x96.png" type="image/x-icon">
  <meta name="description" content="">
  
  
  <title>Altas</title>
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
  
  <style type="text/css">
   
      #formulario{
      	background-color:#003366;
        color: #ffffff;
        border-radius:35px;
        font-size: large;
        width: 50%;
      }
      #submit{
        border-radius:35px;
        background-color: #003366;
        color: #ffffff;
        padding: 2%;
      }


</style>
  
  
  
</head>
<body>
  
  <section data-bs-version="5.1" class="menu menu2 cid-tL77jeuzAV" once="menu" id="menu2-1f">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container-fluid">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="index.html">
                        <img src="../assets/images/mbr-96x96.png" alt="Imagen Programación 1" style="height: 3rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-black text-primary display-7" href="index.html">Victor's gourmet - 2023</a></span>
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
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-black display-4" href="https://mobiri.se">Sobre nosotros</a></li><li class="nav-item"><a class="nav-link link text-black display-4" href="../principal_servicios.html">Servicios</a></li>
                    
                    <li class="nav-item"><a class="nav-link link text-black display-4" href="../contacto.html">Contactos</a>
                    </li></ul>
                
                <div class="navbar-buttons mbr-section-btn"><a class="btn btn-warning display-4" href="../menu.html">Menú</a></div>
            </div>
        </div>
    </nav>
</section>

<section data-bs-version="5.1" class="header18 cid-tRJV5YhuM0 mbr-fullscreen" id="header18-1h">

    <div class="align-center container-fluid" id="formulario">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-10">
                
                <form name="Alta Impuestos" action="alta_mesa2.php" method="post" autocomplete="on" style="height: 10%;">
                <fieldset> <legend> Crear Mesas </legend> 
                    <?php
                        include "../conexion.php";
                        $sql1 = "SELECT ID_mesa,ubicacion FROM mesas GROUP BY ubicacion";                    
                        $resultado = mysqli_query($conexion,$sql1);

                        ?>
                        <select name="ubicacion" id="">
                            <option value="0" SELECTED>Elegir Ubicación</option>
    
                        <?php
                            while ($datos = mysqli_fetch_array($resultado)) {
                                $idm = $datos['ID_mesa'];
                                $ubim = $datos['ubicacion'];
                            
                                echo " <option value=".$ubim."> ".$ubim." </option>";

                            }
                        ?>

                    </select><br> <br>
                    <?php
                        $sql2 = "SELECT ID_mozo,nom_mozo FROM mozos ORDER BY nom_mozo";
                        $resultado2 = mysqli_query($conexion,$sql2);
                    ?>

                    <select name="mozo" id="">
                            <option value="0" SELECTED>--Elegir mozo--</option>
    
                        <?php
                            while ($datos2 = mysqli_fetch_array($resultado2)) {
                                $idMozo = $datos2['ID_mozo'];
                                $nombre = $datos2['nom_mozo'];
                            
                                echo " <option value=".$idMozo."> ".$nombre." </option>";

                            }
                        ?>

                    </select>
                    
                    <br><br>
                    <input placeholder="Capacidad de la mesa" required name="capacidad"  type="number">
                    <br><br>
                    <input type="submit" value="Crear Mesa" id="submit">
                    </fieldset>
                </form>
                
            </div>
        </div>
    </div>
</section>

<section data-bs-version="5.1" class="footer7 cid-tRJwh98X4c mbr-reveal" once="footers" id="footer7-1g">

    

    

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">
                    © Copyright 2023 Victor's gourmet - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
</section><section class="display-7" style="padding: 0;align-items: center;justify-content: center;flex-wrap: wrap;    align-content: center;display: flex;position: relative;height: 4rem;"><a href="https://mobiri.se/632529" style="flex: 1 1;height: 4rem;position: absolute;width: 100%;z-index: 1;"><img alt="" style="height: 4rem;" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="></a><p style="margin: 0;text-align: center;" class="display-7">&#8204;</p><a style="z-index:1" href="https://mobirise.com/offline-website-builder.html">Offline Website Maker</a></section><script src="../assets/bootstrap/js/bootstrap.bundle.min.js"></script>  <script src="../assets/smoothscroll/smooth-scroll.js"></script>  <script src="../assets/ytplayer/index.js"></script>  <script src="../assets/dropdown/js/navbar-dropdown.js"></script>  <script src="../assets/theme/js/script.js"></script>  
  
  
  <input name="animation" type="hidden">
  </body>
</html>