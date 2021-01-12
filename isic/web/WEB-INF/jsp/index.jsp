<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--BootStrap-->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
        <!--css local-->
        <link rel="stylesheet" type="text/css" href="css/index.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css?1.0.0" />
        <title>Index</title>
    </head>
    <body>
        <div class="container-fluid banner">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-md">
                        <div class="navbar-brand">ITSOEH | ISIC</div>
                        <ul class="nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#sec1">Home</a>
                            </li>
                            <li class="nav-item">

                                <div class="dropdown-local">
                                    <a class="nav-link" href="#">Admin</a>
                                    <div class="dropdown-content">
                                        <a target="_blank" href="adminMallaCurricular.htm">Malla Curricular</a>
                                        <a target="_blank" href="adminInvestigacion.htm">Investigación</a>
                                        <a target="_blank" href="adminEspecialidad.htm">Especialidad</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" target="_blank" href="Investigacion.htm">Investigacion</a>
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
                        </ul>
                    </nav>
                </div>
                <div class="col-md-8 offset-md-2 info">
                    <h1 class="text-center">TECNOLÓGICO NACIONAL DE MÉXICO</h1>
                    <p ><h5 class="text-center">INSTITUTO TECNOLÓGICO SUPERIOR DEL OCCIDENTE DEL ESTADO DE HIDALGO</h5></p>
                    <p><h6 class="text-center">INGENIERÍA EN SISTEMAS COMPUTACIONALES</h6></p>
                    <a href="#" class="inicio">Bienvenido</a>
                </div>
            </div>
        </div>
    </body>
</html>
