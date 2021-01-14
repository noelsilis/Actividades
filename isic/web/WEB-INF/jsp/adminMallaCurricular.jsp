<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--CSS local-->
        <link rel="stylesheet" type="text/css" href="css/adminEditor.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/frames.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css?1.0.0" />
        <title>Admin</title>
    </head>
    <body>
        <div class="container topmargin-sm">
            <h2>Malla Curricular</h2>
            <table class="table table-light table-hover">
                <thead>
                    <tr>
                        <th>Semestre</th>
                        <th>Área de conocimiento</th>
                        <th>Clave</th>
                        <th>Asignatura</th>
                        <th>Horas</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="lista" items="${asignatura}">
                        <tr>
                            <td>${lista.MC_SemestreAsignatura}</td>
                            <td>${lista.Nombre}</td>
                            <td>${lista.MC_ClaveAsignatura}</td>
                            <td>${lista.MC_NombreAsignatura}</td>
                            <td>${lista.MC_HorasTot}</td>
                            <td> 
                                <div class="btn-group btn-group-sm">
                                    <c:set var="tmp2" value="f"/>
                                    <c:forEach var="tmp" items="${listAsigEsp}">
                                        <c:if test="${tmp2 != 't'}">
                                            <c:set var="tmp2" value="f"/>
                                        </c:if>
                                        <c:if test="${tmp.idasignatura == lista.MC_ClaveAsignatura}">
                                            <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal" onclick="datosModal2('${lista.MC_SemestreAsignatura}', '${lista.Nombre}', '${lista.MC_ClaveAsignatura}', '${lista.MC_NombreAsignatura}', '${lista.MC_HorasTot}', '${tmp.idespecialidad}');">Editar</button>
                                            <c:set var="tmp2" value="t"/>
                                        </c:if>
                                    </c:forEach>
                                    <c:if test="${tmp2 == 'f'}">
                                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal" onclick="datosModal('${lista.MC_SemestreAsignatura}', '${lista.Nombre}', '${lista.MC_ClaveAsignatura}', '${lista.MC_NombreAsignatura}', '${lista.MC_HorasTot}');">Editar</button>
                                    </c:if>
                                    <a type="button" class="btn btn-secondary" href="delete.htm?id=${lista.MC_ClaveAsignatura}">Borrar</a>
                                    <!-- The Modal -->
                                </div>
                                <div class="modal topmargin-sm" id="myModal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header-->
                                            <div class="modal-header">
                                                <h5 class="modal-title" style="color:darkslategrey;">Editar</h5>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                <form class="needs-validation" novalidate method="POST">
                                                    <!--<div class="form-group">
                                                        <label for="clave" style="color:black;">Clave:</label>
                                                        <input type="text" class="form-control" id="clave" placeholder="Ingresa la clave de asignatura" name="clave" required>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>-->
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">Clave</span>
                                                        </div>
                                                        <input type="text" class="form-control" id="clave" placeholder="Ingresa la clave de asignatura" name="clave" required>
                                                        <!--<label for="horas" style="color:black;">Horas:</label>-->
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">Horas</span>
                                                        </div>
                                                        <input type="text" class="form-control" id="horas" placeholder="Ingresa las horas de la asignatura" name="horas" required>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="semestre" style="color:black;">Semestre:</label>
                                                        <select id="semestre" name="semestre" class="custom-select mb-3 form-control" required>
                                                            <option selected>-Selecciona-</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                        </select>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="conocimiento" style="color:black;">Área de conocimiento:</label>
                                                        <select id="conocimiento" name="conocimiento" class="custom-select mb-3 form-control" onchange="showSelected();" required>
                                                            <option selected>-Selecciona-</option>
                                                            <option value="Ciencias de la Ingenieria">Ciencias de la Ingenieria</option>
                                                            <option value="Ciencias Sociales y Humanidades">Ciencias Sociales y Humanidades</option>
                                                            <option value="Ciencias economico administrativa">Ciencias economico administrativa</option>
                                                            <option value="Ciencias Basicas">Ciencias Básicas</option>
                                                            <option value="Cursos complementarios">Cursos complementarios</option>
                                                            <option value="Ingenieria Aplicada">Ingenieria Aplicada</option>
                                                            <option value="Diseño en Ingenieria">Diseño en Ingenieria</option>
                                                            <option value="Especialidad">Especialidad</option>
                                                        </select>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label id="especialidadtxt" for="conocimiento" style="color:black;display:none">Especialidad:</label>
                                                        <select id="especialidad" name="especialidad" class="custom-select mb-3 form-control" style="display:none" required>
                                                            <option selected>-Selecciona-</option>
                                                            <option value="-1" style="display:none"></option>
                                                            <c:forEach var="list" items="${listEsp}">
                                                                <option value="${list.idespecialidad}">${list.Nombre}</option>
                                                            </c:forEach>
                                                        </select>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="nombre" style="color:black;">Nombre de la asignatura:</label>
                                                        <input type="text" class="form-control" id="nombre" placeholder="Ingresa el nombre de asignatura" name="nombre" required>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>

                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="claveOri"  name="claveOri" value="${lista.MC_ClaveAsignatura}">
                                                    </div>

                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="op"  name="op" value="${-1}">
                                                    </div>

                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="idespecialidadOri"  name="idespecialidadOri" value="${-1}">
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
        <script type="text/javascript" src="js/editarMallaCurricular.js?1.0.0"></script>
        <iframe class="footer-frame" src="footer.htm" title="Iframe Example"></iframe>
    </body>
</html>
