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
        <title>Admininv</title>
    </head>
    <body>
        <div class="container">
            <h2>Área de Investigación</h2>
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
                    <tr>
                        <td>Datos</td>
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
                                                    <label for="tema" style="color:black;">Tema de Investigación:</label>
                                                    <input type="text" class="form-control" id="tema" placeholder="Ingresa el tema de investigación" name="tema" required>
                                                    <div class="valid-feedback">Valido.</div>
                                                    <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                </div>
                                                <div class="from-group">
                                                    <label for="grado" style="color:black;">Grado Académico:</label>
                                                    <select id="grado" name="grado" class="custom-select mb-3 form-control" required>
                                                        <option selected>-Selecciona-</option>
                                                        <option value="Doctorado">Doctorado</option>
                                                        <option value="Maestria">Maestría</option>
                                                        <option value="Ingeniero">Ingeniería</option>                                                      
                                                    </select>
                                                    <div class="valid-feedback">Valido.</div>
                                                    <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label for="nombre" style="color:black;">Nombre del Docente:</label>
                                                    <input type="text" class="form-control" id="nombre" placeholder="Ingresa el nombre del docente" name="nombre" required>
                                                    <div class="valid-feedback">Valido.</div>
                                                    <div class="invalid-feedback">Por favor verifique los campos.</div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="cargo" style="color:black;">Cargo:</label>
                                                    <select id="cargo" name="cargo" class="custom-select mb-3 form-control" required>
                                                        <option selected>-Selecciona-</option>
                                                        <option value="Lider">Lider</option>
                                                        <option value="Colaborador">Colaborador</option>                                                     
                                                    </select>
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
