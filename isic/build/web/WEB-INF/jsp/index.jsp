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
        <title>Index</title>
    </head>

    <body>
        <nav id="menu" class="navbar navbar-expand-lg fixed-top ">
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
                            <a class="nav-link" aria-current="page" href="#">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Investigación</a>
                        </li>
                        <li class="nav-item">
                            <div class="dropdown-local">
                                <a class="nav-link" href="#">Especialidades</a>
                                <div class="dropdown-content">
                                    <c:forEach var="list" items="${listEsp}">
                                        <a target="_blank" href="Especialidad.htm?sp=${list.idespecialidad}">${list.Nombre}</a>
                                    </c:forEach>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <div class="dropdown-local">
                                <a class="nav-link" href="#">Administrador</a>
                                <div class="dropdown-content">
                                    <a target="_blank" href="adminMallaCurricular.htm">Malla Curricular</a>
                                    <a target="_blank" href="adminInvestigacion.htm">Investigación</a>
                                    <a target="_blank" href="adminEspecialidad.htm">Especialidad</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <section id="hero">
            <div class="container">
                <div class="content-center topmargin-lg">
                    <p><h1>TECNOLÓGICO NACIONAL DE MÉXICO</h1></p>
                    <p><h5>INSTITUTO TECNOLÓGICO SUPERIOR DEL OCCIDENTE DEL ESTADO DE HIDALGO</h5></h5></p>
                    <p><h6>INGENIERÍA EN SISTEMAS COMPUTACIONALES</h6></p>
                    <a href="#portfolio" class="btn btn-outline-light topmargin-xs"><i class="fas fa-info-circle"></i>Más información</a>
                </div>
            </div>
        </section>
        <section id="portfolio">
            <div class="container-fluid">
                <div class="content-center">
                    <h2>CONOCENOS</h2>
                </div>
            </div> 
        </section>
        <section id="footer" class="bg-dark">
            <div class="container">
                <img src="img/isic-itsoeh-logo-blanco.png?1.0.0" alt="logo" class="logo-itsoeh">
                
                <ul class="list-inline">
                    <li class="list-inline-item footer-menu"><a href="#"><i class="fas fa-envelope"></i> rporras@itsoeh.edu.mx</a></li>
                    <li class="list-inline-item footer-menu"><a href="#"><i class="fas fa-phone-square-alt"></i> 01 738-73-54000 ext 240</a></li>
                    <li class="list-inline-item footer-menu">
                        <a target="_blank" href="https://www.facebook.com/ING-Sistemas-Computacionales-ITSOEH-916964301664810/">
                            <i class="fab fa-facebook-square"></i> Facebook</a>
                    </li>
                </ul>
                <ul class="list-inline">
                    <li class="list-inline-item footer-menu"><span>Atención: M.C. Rolando Porras Muñoz</span></li>
                </ul>
                <small>© 2021 Ingeniería en Sistemas Computacionales | ITSOEH</small>
            </div>
        </section>
        <!--JS Local-->
        <script type="text/javascript" src="js/index.js?1.0.0"></script>
    </body>
</html>
