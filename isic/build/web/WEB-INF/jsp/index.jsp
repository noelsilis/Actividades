<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--css local-->
        <link rel="stylesheet" type="text/css" href="css/index.css?1.0.0" />
        <title>Index</title>
    </head>

    <body>
    <header>
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.hm">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" target="contenedorIFrame" href="Investigacion.htm?1.0.0">Investigacion</a>
                </li>
                <li class="nav-item">
                    <div class="dropdown-local">
                        <a class="nav-link">Especialidades</a>
                        <div class="dropdown-content-hg">
                            <c:forEach var="list" items="${listEsp}">
                                <a target="contenedorIFrame" href="Especialidad.htm?sp=${list.idespecialidad}">${list.Nombre}</a>
                            </c:forEach>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <div class="dropdown-local">
                        <a class="nav-link">Admin</a>
                        <div class="dropdown-content-sm">
                            <a href="adminMallaCurricular.htm?1.0.0" target="contenedorIFrame">Malla Curricular</a>
                            <a href="adminInvestigacion.htm?1.0.0" target="contenedorIFrame">Investigación</a>
                            <a href="adminEspecialidad.htm?1.0.0" target="contenedorIFrame">Especialidad</a>
                        </div>
                    </div>

                </li>
            </ul>
        </nav>
    </header>
    <div class="content">
        <iframe name="contenedorIFrame" id="contenido"></iframe>
    </div>

</body>
</html>
