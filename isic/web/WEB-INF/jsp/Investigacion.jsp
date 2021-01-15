<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" http-equiv="Content-Type" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--BootStrap CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <!--CSS local-->
        <link rel="stylesheet" type="text/css" href="css/investigacion.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/footer.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css?1.0.0" />
        <!--ICONOS-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>Area de Investigacion</title>
    </head>
    <body>
        <div class="container topmargin-sm">
            <c:set var="aux" value=""/>
            <c:forEach var="lista" items="${inv}">
                <c:if test="${aux != lista.Nombre}">
                </table>
                <c:set var="aux" value="${lista.Nombre}"/>
                <div id="titulo" class="topmargin-xs">
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
<section id="footer" class="bg-dark topmargin-lg">
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
<!--Bootstrap JS-->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</body>
</html>
