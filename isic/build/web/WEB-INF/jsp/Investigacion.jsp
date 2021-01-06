<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
              rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--css local para tablas e icono-->
        <link rel="stylesheet" type="text/css" href="css/iconos.css?1.0.0" />
        <!--iconos de la plataforma fontawesome-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>Area de Investigacion</title>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <c:set var="aux" value=""/>
                <c:forEach var="lista" items="${inv}">
                    <c:if test="${aux != lista.Nombre}">
                        </table>
                        <c:set var="aux" value="${lista.Nombre}"/>

                        <h4><span class="badge badge-primary">${lista.Nombre}</span></h4>
                        <table class="table table-light">
                            <thead>
                                <tr>
                                    <th>Grado Académico</th>
                                    <th>Profesor</th>
                                    <th>Cargo</th>
                                </tr>
                            </thead>
                        </c:if>
                        <c:if test="${aux == lista.Nombre}">
                            <tr>
                                <td>
                                    ${lista.GradoAcademico}
                                </td> 
                                <td>
                                    ${lista.Docente}
                                </td>
                                <c:if test="${lista.CargoDocente == 1}">
                                    <td>
                                        <h6><span class="badge badge-pill badge-success">Lider</span></h6>
                                    </td> 
                                </c:if>
                                <c:if test="${lista.CargoDocente == 2}">
                                    <td>
                                        Colaborador
                                    </td> 
                                </c:if>
                            </tr>

                        </c:if>
                    </c:forEach>  
            </div>
        </div>

    </body>
</html>
