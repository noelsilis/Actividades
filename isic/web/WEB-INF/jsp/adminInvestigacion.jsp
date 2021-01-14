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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--css local-->
        <link rel="stylesheet" type="text/css" href="css/adminEditor.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/frames.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css?1.0.0" />
        <title>Admininv</title>
    </head>
    <body>
        <div class="container topmargin-sm">
            <h2>Área de Investigación</h2>

            <div id="titulo">
                <h6><b>Tema Linea Ivestigacion</b></h6>
            </div>
            <table class="table table-light table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tema</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="listatema" items="${tema}">
                        <tr>
                            <td>${listatema.idtema_linea_investigacion}</td>
                            <td>${listatema.Nombre}</td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal1" onclick="datosModal1('${listatema.idtema_linea_investigacion}', '${listatema.Nombre}');">Editar</button>
                                    <a type="button" class="btn btn-secondary" href="deleteTemaInv.htm?id=${listatema.idtema_linea_investigacion}">Borrar</a>
                                </div>
                                <div class="modal topmargin-sm" id="myModal1">
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
                                                    <div class="form-group">
                                                        <label for="tema" style="color:black;">Tema de Investigación:</label>
                                                        <input type="text" class="form-control" id="temaInv" placeholder="Ingresa el tema de investigación" name="temaInv" required>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="idtemaInv" name="idtemaInv" required>
                                                    </div>
                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="op" name="op" value="1">
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

            <div id="titulo">
                <h6><b>Colaboradores</b></h6>
            </div>
            <table class="table table-light table-hover">
                <thead>
                    <tr>
                        <th>Tema de Investigación</th>
                        <th>Grado Académico</th>
                        <th>Profesor</th>
                        <th>Cargo</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="listInv" items="${inv}">
                        <tr>
                            <td>${listInv.Nombre}</td>
                            <td>${listInv.GradoAcademico}</td>
                            <td>${listInv.Docente}</td>
                            <c:if test="${listInv.CargoDocente == 1}">
                                <td>Lider</td>
                            </c:if>
                            <c:if test="${listInv.CargoDocente == 2}">
                                <td>Colaborador</td>
                            </c:if>
                            <td> 
                                <div class="btn-group btn-group-sm">
                                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal" onclick="datosModal2('${listInv.temalinea}', '${listInv.idDocente}', '${listInv.CargoDocente}');">Editar</button>
                                    <c:if test="${listInv.Estado == 1}">
                                        <a type="button" class="btn btn-secondary" href="desHabDocentInv.htm?id=${listInv.temalinea}_${listInv.idDocente}_2">Deshabilitar</a>
                                    </c:if>
                                    <c:if test="${listInv.Estado == 2}">
                                        <a type="button" class="btn btn-secondary" href="desHabDocentInv.htm?id=${listInv.temalinea}_${listInv.idDocente}_1">Habilitar</a>
                                    </c:if>
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

                                                    <div class="from-group">
                                                        <label for="tema" style="color:black;">Tema de Investigación:</label>
                                                        <select id="tema" name="tema" class="custom-select mb-3 form-control" required>
                                                            <option selected>-Selecciona-</option>
                                                            <c:forEach var="listatema" items="${tema}">
                                                                <option value="${listatema.idtema_linea_investigacion}">${listatema.Nombre}</option>
                                                            </c:forEach>                                                    
                                                        </select>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>

                                                    <div class="from-group">
                                                        <label for="docente" style="color:black;">Docente:</label>
                                                        <select id="docente" name="docente" class="custom-select mb-3 form-control" required>
                                                            <option selected>-Selecciona-</option>
                                                            <c:forEach var="listDoc" items="${doce}">
                                                                <option value="${listDoc.iddocente}">${listDoc.Docente}</option>
                                                            </c:forEach>                                                  
                                                        </select>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="cargo" style="color:black;">Cargo:</label>
                                                        <select id="cargo" name="cargo" class="custom-select mb-3 form-control" required>
                                                            <option selected>-Selecciona-</option>
                                                            <option value="1">Lider</option>
                                                            <option value="2">Colaborador</option>                                                     
                                                        </select>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>

                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="temaOri" name="temaOri">
                                                    </div>

                                                    <div class="form-group" style="display:none">
                                                        <input type="text" class="form-control" id="docenteOri" name="docenteOri">
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
        </div>
        <script type="text/javascript" src="js/editarInvestigacion.js?1.0.0"></script>
        <iframe class="footer-frame" src="footer.htm" title="Iframe Example"></iframe>
    </body>
</html>