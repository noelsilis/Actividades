<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
              rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--css local para tablas e icono-->
        <link rel="stylesheet" type="text/css" href="css/especialidad.css?1.0.0" />
        <!--iconos de la plataforma fontawesome-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>Especialidad</title>
    </head>
    <body>
    <section id="sec1">
        <div class="contenedor-texto">
            <h2><c:out value="${espInfo[0].Nombre}"/></h2>
            <p><c:out value="${espInfo[0].Objetivo}"/></p>
            <a href="#sec2">Section 2</a>
        </div>
        <img src="img/Freelancer.svg?1.0.0">
    </section>
    <section id="sec2">
        <div class="contenedor-texto">
            <h2>Perfil de Egreso</h2>
            <ol type="A">
                <c:forEach var="perejil" items="${espEgr}">
                    <li>${perejil.capacidad}</li>
                    </c:forEach>
            </ol>
            <a href="#sec3">Section 3</a>
        </div>
        <img src="img/online_cv.svg?1.0.0">
    </section>
    <section id="sec3">
        <div class="contenedor-texto">
            <h2>Asignaturas</h2>
            <table class="table table-borderless">
                <thead>
                    <tr>
                        <th>Clave</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                    </tr>
                    <c:forEach var="asignatura" items="${espAsig}">
                        <tr id="contenido">
                            <td>${asignatura.idasignatura}</td>
                            <td>${asignatura.MC_NombreAsignatura}</td>
                            <td>${asignatura.descripcion}</td>
                        </tr>
                    </c:forEach>
                </thead>   
            </table>
            <a href="#sec1">Section 1</a>
            <a id="malla" target="_blank" href="mallaCurricular.htm?sp=${list.idespecialidad}">Malla Curricular</a>
        </div>
        <img src="img/education.svg?1.0.0">
    </section>
</body>
</html>
