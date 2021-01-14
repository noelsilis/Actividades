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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--ICONOS-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--CSS local-->
        <link rel="stylesheet" type="text/css" href="css/index.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/login.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css?1.0.0" />
        <title>Login</title>
    </head>

    <body>
        <div class="modal-dialog text-center">
            <div class="col-sm-10 main-section">
                <div class="modal-content container">
                    <div class="col-12 user-img">
                        <img src="img/logo-isic-itsoeh.png" />
                    </div>
                    <form class="col-12" method="POST">
                        <div class="form-group" id="user-group">
                            <input class="form-control" type="text" placeholder="Administador" name="admin"/>                            
                        </div>
                        <div class="form-group" id="contrasena-group">
                            <input class="form-control" type="password" placeholder="Password" name="pass"/>                            
                        </div>
                        <button type="submit" class="btn btn-light">Iniciar sesión</button>
                    </form>
                </div>
            </div>
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
    </body>
</html>
