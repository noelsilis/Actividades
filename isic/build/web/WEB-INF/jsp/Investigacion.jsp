<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--CSS local-->
        <link rel="stylesheet" type="text/css" href="css/investigacion.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/frames.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css?1.0.0" />
        <title>Area de Investigacion</title>
    </head>
    <body>
        <div class="container topmargin-sm">
            <c:set var="aux" value=""/>
            <c:forEach var="lista" items="${inv}">
                <c:if test="${aux != lista.Nombre}">
                </table>
                <c:set var="aux" value="${lista.Nombre}"/>
                <div id="titulo">
                    <h6><b>${lista.Nombre}</b></h6>
                </div>
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
                            <td id="lider">
                                Lider
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
        </table>
    </div>
    <iframe class="footer-frame" src="footer.htm" title="Iframe Example"></iframe>

</body>
</html>
