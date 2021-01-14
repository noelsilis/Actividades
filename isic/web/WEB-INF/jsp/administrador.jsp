<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en" xmlns:th="http://www.thymeleaf.org" dir="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--BootStrap CSS-->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
        <!--Bootstrap JS-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <!--ICONOS-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--CSS local-->
        <link rel="stylesheet" type="text/css" href="css/index.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/frames.css?1.0.0" />
        <title>Administrador</title>
    </head>

    <body>
        <nav id="menu" class="navbar navbar-expand-lg fixed-top bg-light navbar-light">
            <div class="container">
                <a class="navbar-brand" target="_blank" href="http://www.itsoeh.edu.mx/front/">
                    <img src="img/isic-itsoeh-logos.png?1.0.0" alt="logo" class="logo-itsoeh">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
                        aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Links -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="inicio.htm" target="iframe_a">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a href="adminInvestigacion.htm" target="iframe_a" >Investigación</a>
                        </li>
                        <li class="nav-item">
                            <a href="adminMallaCurricular.htm" target="iframe_a" >Malla Curricular</a>
                        </li>
                        <li class="nav-item">
                            <a href="adminEspecialidad.htm" target="iframe_a">Especialidad</a>
                        </li>
                        <li>
                            <a href="#" class="btn btn-outline-dark">Sing out</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--JS Local-->
        <!--<script type="text/javascript" src="js/index.js?1.0.0"></script>-->
        <iframe class="inicial-frame" src="inicio.htm" name="iframe_a" title="Iframe Example"></iframe>
    </body>
</html>
