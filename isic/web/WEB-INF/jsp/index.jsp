<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" 
              crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--css local-->
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <!--iconos de la plataforma fontawesome-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>Index</title>
    </head>

    <body>
    <header>
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Active</a>
                </li>
                <li class="nav-item">
                    <a id="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                        Malla Curricular
                    </a>
                    <div class="dropdown-menu">
                        <c:forEach var="list" items="${listEsp}">
                            <a class="nav-link dropdown-item" target="contenedorIFrame" href="mallaCurricular.htm?sp=${list.idespecialidad}">${list.Nombre}</a>
                        </c:forEach>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" target="contenedorIFrame" href="Investigacion.htm">Investigacion</a>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a id="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                            Especialidades
                        </a>
                        <div class="dropdown-menu">
                            <c:forEach var="list" items="${listEsp}">
                                <a target="contenedorIFrame" class="nav-link dropdown-item" href="Especialidad.htm?sp=${list.idespecialidad}">${list.Nombre}</a>
                            </c:forEach>
                        </div>
                    </div>

                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
        </nav>
    </header>

    <div class="content">
        <iframe name="contenedorIFrame" src="" id="contenido"></iframe>
    </div>
    <div class="container">

    </body>
</html>
