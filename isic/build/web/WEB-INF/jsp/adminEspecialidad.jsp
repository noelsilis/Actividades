<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
                        <c:forEach var="listaEsp" items="${especialidad}">
                            <td>${listaEsp.idespecialidad}</td>
                            <td>${listaEsp.Nombre}</td>
                            <td>${listaEsp.Objetivo}</td>
                            <td> 
                                <div class="btn-group btn-group-sm">
                                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal" onclick="datosModal1('${listaEsp.idespecialidad}', '${listaEsp.Nombre}', '${listaEsp.Objetivo}');">Editar</button>
                                    <a type="button" class="btn btn-secondary" href="deleteEspecialidad.htm?id=${listaEsp.idespecialidad}">Borrar</a>
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
                                                <form class="needs-validation" novalidate method="POST">
                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="idespecialidad" name="idespecialidad">
                                                    </div>
                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="op" name="op" value="1">
                                                    </div>
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
                    </c:forEach>
                </tbody>
            </table>
            <!--Tabla de especialidad: Sección 2-->
            <div id="titulo">
                <h6><b>Perfil de egreso de las distintas especiliadades</b></h6>
            </div>
            <table class="table table-light table-hover">
                <thead>
                    <tr>
                        <th>Especialidad</th>
                        <th>Perfil de Egreso</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="listaEgreso" items="${egreso}">
                        <tr>
                            <td>${listaEgreso.Nombre}</td>
                            <td>${listaEgreso.capacidad}</td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal1" onclick="datosModal2('${listaEgreso.idespecialidad}', '${listaEgreso.capacidad}');">Editar</button>
                                    <a type="button" class="btn btn-secondary" href="deletePEgreso.htm?id=${listaEgreso.idespecialidad}_${listaEgreso.capacidad}">Borrar</a>
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
                                                <form class="needs-validation" novalidate method="POST">
                                                    <div class="form-group">
                                                        <label for="perfil" style="color:black;">Perfil de Egreso:</label>
                                                        <textarea class="form-control" rows="5" id="perfil" placeholder="Ingresa el perfil de egreso" name="perfil" required></textarea>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="idegreso" name="idegreso" required>
                                                    </div>
                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="perfilOri" name="perfilOri"required>
                                                    </div>
                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="op" name="op" value="2">
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
                    </c:forEach>
                </tbody>
            </table>
            <!--Tabla de especialidad: Sección 3-->
            <div id="titulo">
                <h6><b>Asignaturas existentes de las distintas especilidades de la Ingeniería en Sistemas Computacionales</b></h6>
            </div>
            <table class="table table-light table-hover">
                <thead>
                    <tr>
                        <th>Especialidad</th>
                        <th>Clave Asignatura</th>
                        <th>Descripción</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="listaAE" items="${asiEsp}">
                        <tr>
                            <td>${listaAE.Nombre}</td>
                            <td>${listaAE.idasignatura}</td>
                            <td>${listaAE.descripcion}</td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal2" onclick="datosModal3('${listaAE.idespecialidad}', '${listaAE.idasignatura}', '${listaAE.descripcion}');">Editar</button>
                                    <a type="button" class="btn btn-secondary" href="deleteAsigEsp.htm?id=${listaAE.idespecialidad}_${listaAE.idasignatura}">Borrar</a>
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
                                                <form class="needs-validation" novalidate method="POST">
                                                    <div class="form-group" >
                                                        <label for="descripcion" id="labclave" name="labclave" style="color:black;"></label>
                                                        <input type="text" class="form-control" id="clave" name="clave" style="display:none" required>
                                                    </div>
                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="idEsp" name="idEsp">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="descripcion" style="color:black;">Descripción:</label>
                                                        <textarea class="form-control" rows="5" id="descripcion" placeholder="Ingresa la descripción de la asignatura" name="descripcion" required></textarea>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="op" name="op" value="3">
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
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <script type="text/javascript" src="js/editarEspecialidad.js?1.0.0"></script>
    </body>
</html>