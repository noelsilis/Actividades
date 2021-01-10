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
        <link rel="stylesheet" type="text/css" href="css/adminEditor.css?1.0.0" />
        <title>Adminespecialidadd</title>
    </head>
    <body>
        <div class="container">
            <h2>Especialidades</h2>
            <!--Tabla de especialidad: Sección 1-->
            <div id="titulo">
                <h6><b>Especilidades existentes en la malla curricular de la Ingeniería en Sistemas Computacionales</b></h6>
            </div>
            <table class="table table-light table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Objetivo</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Datos</td>
                        <td>Datos</td>
                        <td>Datos</td>
                        <td> 
                            <div class="btn-group btn-group-sm">
                                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal">Editar</button>
                                <button type="button" class="btn btn-secondary">Borrar</button>
                            </div>
                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header-->
                                        <div class="modal-header">
                                            <h4 class="modal-title" style="color:darkslategrey;">Editar</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form action="/action_page.php" class="needs-validation" novalidate>
                                                <div class="form-group">
                                                    <label for="nombre" style="color:black;">Nombre:</label>
                                                    <input type="text" class="form-control" id="nombre" placeholder="Ingresa el nombre de la especialidad" name="nombre" required>
                                                    <div class="valid-feedback">Valido.</div>
                                                    <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="objetivo" style="color:black;">Objetivo:</label>
                                                    <textarea class="form-control" rows="5" id="objetivo" placeholder="Ingresa el objetivo de la especialidad" name="objetivo" required></textarea>
                                                    <div class="valid-feedback">Valido.</div>
                                                    <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Aceptar</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!--Tabla de especialidad: Sección 2-->
            <div id="titulo">
                <h6><b>Perfil de egreso de las distintas especiliadades</b></h6>
            </div>
            <table class="table table-light table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Perfil de Egreso</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Datos</td>
                        <td>Datos</td>
                        <td>
                            <div class="btn-group btn-group-sm">
                                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal1">Editar</button>
                                <button type="button" class="btn btn-secondary">Borrar</button>
                            </div>
                            <div class="modal" id="myModal1">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header-->
                                        <div class="modal-header">
                                            <h4 class="modal-title" style="color:darkslategrey;">Editar</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form action="/action_page.php" class="needs-validation" novalidate>
                                                <div class="form-group">
                                                    <label for="perfil" style="color:black;">Perfil de Egreso:</label>
                                                    <textarea class="form-control" rows="5" id="perfil" placeholder="Ingresa el perfil de egreso" name="perfil" required></textarea>
                                                    <div class="valid-feedback">Valido.</div>
                                                    <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Aceptar</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!--Tabla de especialidad: Sección 3-->
            <div id="titulo">
                <h6><b>Asignaturas existentes de las distintas especilidades de la Ingeniería en Sistemas Computacionales</b></h6>
            </div>
            <table class="table table-light table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Clave Asignatura</th>
                        <th>Descripción</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Datos</td>
                        <td>Datos</td>
                        <td>Datos</td>
                        <td>
                            <div class="btn-group btn-group-sm">
                                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal2">Editar</button>
                                <button type="button" class="btn btn-secondary">Borrar</button>
                            </div>
                            <div class="modal" id="myModal2">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header-->
                                        <div class="modal-header">
                                            <h4 class="modal-title" style="color:darkslategrey;">Editar</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form action="/action_page.php" class="needs-validation" novalidate>
                                                <div class="form-group">
                                                    <label for="clave" style="color:black;">Clave:</label>
                                                    <input type="text" class="form-control" id="clave" placeholder="Ingresa la clave de asignatura" name="clave" required>
                                                    <div class="valid-feedback">Valido.</div>
                                                    <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="descripcion" style="color:black;">Descripción:</label>
                                                    <textarea class="form-control" rows="5" id="descripcion" placeholder="Ingresa la descripción de la asignatura" name="text" required></textarea>
                                                    <div class="valid-feedback">Valido.</div>
                                                    <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Aceptar</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <script type="text/javascript" src="js/editarMallaCurricular.js?1.0.0"></script>
    </body>
</html>
