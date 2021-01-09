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
        <link rel="stylesheet" type="text/css" href="css/adminMallaCurricular.css?1.0.0" />
        <title>Admin</title>
    </head>
    <body>
        <div class="container">
            <h2>Malla Curricular</h2>
            <table class="table table-dark table-hover">
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
                            <td class="btn-group btn-group-sm"> 
                                <div class="btn-group btn-group-sm">
                                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal">Editar</button>
                                    <button type="button" class="btn btn-secondary">Borrar</button>
                                    <!-- The Modal -->
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
                                                    <div class="from-group">
                                                        <label for="conocimiento" style="color:black;">Semestre:</label>
                                                        <select id="semestre" name="semestres" class="custom-select mb-3 form-control" required>
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
                                                        <select id="conocimiento" name="conocimiento" class="custom-select mb-3 form-control" required>
                                                            <option selected>-Selecciona-</option>
                                                            <option value="Ciencias de la Ingenieria">Ciencias de la Ingenieria</option>
                                                            <option value="Ciencias Sociales y Humanidades">Ciencias Sociales y Humanidades</option>
                                                            <option value="Ciencias economico administrativa">Ciencias economico administrativa</option>
                                                            <option value="Ciencias Básicas">Ciencias Básicas</option>
                                                            <option value="Cursos complementarios">Cursos complementarios</option>
                                                            <option value="Ingeniería Aplicada">Ingeniería Aplicada</option>
                                                            <option value="Diseño en Ingenieria">Diseño en Ingenieria</option>
                                                            <option value="Especialidad">Especialidad</option>
                                                        </select>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="clave" style="color:black;">Clave:</label>
                                                        <input type="text" class="form-control" id="clave" placeholder="Ingresa la clave de asignatura" name="clave" required>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="nombre" style="color:black;">Nombre de la asignatura:</label>
                                                        <input type="text" class="form-control" id="nombre" placeholder="Ingresa el nombre de asignatura" name="nombre" required>
                                                        <div class="valid-feedback">Valido.</div>
                                                        <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="horas" style="color:black;">Horas:</label>
                                                        <input type="text" class="form-control" id="horas" placeholder="Ingresa las horas de la asignatura" name="horas" required>
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
        </div>
        <script type="text/javascript" src="js/editarMallaCurricular.js?1.0.0"></script>
    </body>
</html>
