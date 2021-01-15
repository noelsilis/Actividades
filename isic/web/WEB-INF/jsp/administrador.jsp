<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--BootStrap CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <!--ICONOS-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--CSS local-->
        <link rel="stylesheet" type="text/css" href="css/index.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/frames.css?1.0.0" />
        <title>Administrador</title>
    </head>

    <body>
        <div class="container-fluid">
            <div class="row">
                <nav class="navbar navbar-expand-lg fixed-top bg-light navbar-light">
                    <div class="container">
                        <a class="navbar-brand" target="_blank" href="http://www.itsoeh.edu.mx/front/">
                            <img src="img/isic-itsoeh-logos.png?1.0.0" alt="logo" class="logo-itsoeh">
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" aria-controls="collapsibleNavbar" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-bars"></i>
                        </button>
                        <div class="collapse navbar-collapse" id="collapsibleNavbar">
                            <!-- Links -->
                            <div class="navbar-nav ml-auto">
                                    <a class="nav-item nav-link" aria-current="page" href="inicio.htm" target="iframe_a">Inicio</a>
                                    <a class="nav-item nav-link" href="Investigacion.htm" target="iframe_a">Investigación</a>
                                    <div class="dropdown-local">
                                        <a class="nav-item nav-link">Especialidades</a>
                                        <div class="dropdown-content">
                                            <c:forEach var="list" items="${listEsp}">
                                                <a href="Especialidad.htm?sp=${list.idespecialidad}" target="iframe_a">${list.Nombre}</a>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="dropdown-local">
                                        <a class="nav-item nav-link">Administrar</a>
                                        <div class="dropdown-content">
                                            <a href="adminEspecialidad.htm" target="iframe_a">Especialidad</a>
                                            <a href="adminMallaCurricular.htm" target="iframe_a">Malla Curricular</a>
                                            <a href="adminInvestigacion.htm" target="iframe_a">Investigacion</a>
                                        </div>
                                    </div>
                                    <a class="nav-item nav-link" href="index.htm" >Log out</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!--JS Local-->
        <!--<script type="text/javascript" src="js/index.js?1.0.0"></script>-->
        <iframe class="inicial-frame" src="inicio.htm" name="iframe_a" title="Iframe Example"></iframe>
        <!--Bootstrap JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
