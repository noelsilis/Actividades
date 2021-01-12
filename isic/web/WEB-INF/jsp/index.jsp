<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--css local-->
        <link rel="stylesheet" type="text/css" href="css/index.css?1.0.0" />
        <title>Index</title>
    </head>

    <body>
    <header>
        <nav>
            <ul>
                <li>
                    <a target="contenedorIFrame" href="Investigacion.htm">Investigacion</a>
                </li>
                <li>
                    <div>
                        <span>Especialidades</span>
                        <div>
                            <ul>
                                <c:forEach var="list" items="${listEsp}">
                                    <li><a target="contenedorIFrame" href="Especialidad.htm?sp=${list.idespecialidad}">${list.Nombre}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                </li>
                <li>
                    <div>
                        <span>Admin</span>
                        <div>
                            <ul>
                                <li><a href="adminMallaCurricular.htm" target="contenedorIFrame">Malla Curricular</a></li>
                                <li><a href="adminInvestigacion.htm" target="contenedorIFrame">Investigación</a></li>
                                <li><a href="adminEspecialidad.htm" target="contenedorIFrame">Especialidad</a></li>
                            </ul>
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
