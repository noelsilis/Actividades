<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" 
              crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--css local-->
        <link rel="stylesheet" type="text/css" href="css/mallaCurricular.css">
        <!--iconos de la plataforma fontawesome-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>Malla Curricular</title>
    </head>

    <body>
        <div class="container">
            <center>
                <p><b><h5>Intituto Tecnológico Superior del Occidente del Estado de Hidalgo</h5></b></p>
                <p><h6>RETICULA DE INGENIERÍA EN SISTEMAS COMPUTACIONALES CLAVE ISIC-2010-224, Especilidad: ${mat[0].Nombre}</h6></p> 
            </center>
            <table class="table table-borderless">
                <thead>
                    <tr>
                        <th>1°</th>
                        <th>2°</th>
                        <th>3°</th>
                        <th>4°</th>
                        <th>5°</th>
                        <th>6°</th>
                        <th>7°</th>
                        <th>8°</th>
                        <th>9°</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="aux" value="0"/>
                    <c:set var="aux2" value="-1"/>
                    <c:forEach var = "i" begin = "0" end = "7">
                        <tr>
                            <c:set var="aux2" value="${aux2+1}"/>
                            <td id="etiqueta${aux2}" class="${as1[aux].Nombre}" style="color: white; font-size: 70%;">
                                <b>${as1[aux].MC_NombreAsignatura}</b>
                                <br>${as1[aux].MC_HorasTot}
                                <br>${as1[aux].MC_ClaveAsignatura}
                            </td>
                            <c:set var="aux2" value="${aux2+1}"/>
                            <td id="etiqueta${aux2}" class="${as2[aux].Nombre}" style="color: white; font-size: 70%;">
                                <b>${as2[aux].MC_NombreAsignatura}</b>
                                <br>${as2[aux].MC_HorasTot}
                                <br>${as2[aux].MC_ClaveAsignatura}
                            </td>
                            <c:set var="aux2" value="${aux2+1}"/>
                            <td id="etiqueta${aux2}" class="${as3[aux].Nombre}" style="color: white; font-size: 70%;">
                                <b>${as3[aux].MC_NombreAsignatura}</b>
                                <br>${as3[aux].MC_HorasTot}
                                <br>${as3[aux].MC_ClaveAsignatura}
                            </td>
                            <c:set var="aux2" value="${aux2+1}"/>
                            <td id="etiqueta${aux2}" class="${as4[aux].Nombre}" style="color: white; font-size: 70%;">
                                <b>${as4[aux].MC_NombreAsignatura}</b>
                                <br>${as4[aux].MC_HorasTot}
                                <br>${as4[aux].MC_ClaveAsignatura}
                            </td>
                            <c:set var="aux2" value="${aux2+1}"/>
                            <td id="etiqueta${aux2}" class="${as5[aux].Nombre}" style="color: white; font-size: 70%;">
                                <b>${as5[aux].MC_NombreAsignatura}</b>
                                <br>${as5[aux].MC_HorasTot}
                                <br>${as5[aux].MC_ClaveAsignatura}
                            </td>
                            <c:set var="aux2" value="${aux2+1}"/>
                            <td id="etiqueta${aux2}" class="${as6[aux].Nombre}" style="color: white; font-size: 70%;">
                                <b>${as6[aux].MC_NombreAsignatura}</b>
                                <br>${as6[aux].MC_HorasTot}
                                <br>${as6[aux].MC_ClaveAsignatura}
                            </td>
                            <c:set var="aux2" value="${aux2+1}"/>
                            <td id="etiqueta${aux2}" class="${as7[aux].Nombre}" style="color: white; font-size: 70%;">
                                <b>${as7[aux].MC_NombreAsignatura}</b>
                                <br>${as7[aux].MC_HorasTot}
                                <br>${as7[aux].MC_ClaveAsignatura}
                            </td>
                            <c:set var="aux2" value="${aux2+1}"/>
                            <td id="etiqueta${aux2}" class="${as8[aux].Nombre}" style="color: white; font-size: 70%;">
                                <b>${as8[aux].MC_NombreAsignatura}</b>
                                <br>${as8[aux].MC_HorasTot}
                                <br>${as8[aux].MC_ClaveAsignatura}
                            </td>
                            <c:set var="aux2" value="${aux2+1}"/>
                            <td id="etiqueta${aux2}" style="color:grey; font-size: 70%;">
                                <b>${as9[aux].MC_NombreAsignatura}</b>
                                <br>${as9[aux].MC_HorasTot}
                                <br>${as9[aux].MC_ClaveAsignatura}
                            </td>
                        </tr>
                        <c:set var="aux" value="${aux+1}"/>
                    </c:forEach> 
                </tbody>
            </table>
        </div>
        <h1 id="tam" style="font-size:0px;"><c:out value = "${aux2}"/></h1>  
        <script type="text/javascript" src="js/malla_curricular.js"></script>
        <!-- Remember to include jQuery :) -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
        <!--Tabla descripción-->
        <div class="container">
            <!--<h2>Black/Dark Table</h2>
            <p>The .table-dark class adds a black background to the table:</p>-->            
            <table class="table table-active">
                <thead>
                    <tr>
                        <th>Área de conocimiento</th>
                        <th>Nomenclatura</th>
                        <th>Créditos</th>
                        <th>Requisitos de titulación</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td id="tabla1">
                            <table>
                                <tr>
                                    <td>${area[0].Nombre} ${area[0].Horas}hrs</td>
                                    <td><i class="fas fa-circle" style="color: #921794;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[1].Nombre} ${area[1].Horas}hrs</td>
                                    <td><i class="fas fa-circle" style="color: #6C8B5A; "></i></td>
                                </tr>
                                <tr>
                                    <td>${area[2].Nombre} ${area[2].Horas}hrshrs</td>
                                    <td><i class="fas fa-circle" style="color: #A5A71F;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[3].Nombre} ${area[3].Horas}hrshrs</td>
                                    <td><i class="fas fa-circle" style="color: #B17205;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[4].Nombre} ${area[4].Horas}hrs</td>
                                    <td><i class="fas fa-circle" style="color: #8664C5;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[5].Nombre} ${area[5].Horas}hrshrs</td>
                                    <td><i class="fas fa-circle" style="color: #0366AF;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[6].Nombre} ${area[6].Horas}hrshrs</td>
                                    <td><i class="fas fa-circle" style="color: #78BDD4;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[7].Nombre} ${area[7].Horas}hrshrs</td>
                                    <td><i class="fas fa-circle" style="color: #0FA11A;"></i></td>
                                </tr>
                            </table>

                        </td>
                        <td id="tabla2">
                            <table>
                                <tr>
                                    <td>Prerrequisito</td>
                                    <td><i class="fas fa-long-arrow-alt-right" style="color: darkslategray;"></i></td>
                                </tr>
                            </table>
                        </td>
                        <td id="tabla3">
                            <table>
                                <tr>
                                    <td>Estructura Genérica: </td>
                                    <td>210</td>
                                </tr>
                                <tr>
                                    <td>Residencia:</td>
                                    <td>10</td>
                                </tr>
                                <tr>
                                    <td>Servicio Social:</td>
                                    <td>10</td>
                                </tr>
                                <tr>
                                    <td>Actividades Complementarias:</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>Especialidad:</td>
                                    <td>25</td>
                                </tr>
                                <tr>
                                    <td><b>Total de Créditos:</b></td>
                                    <td><b>260</b></td>
                                </tr>
                            </table>
                        </td>
                        <td id="lista1">
                            <ol>
                                <li> Aprobar todas las asignaturas de la estructura genérica y del módulo de especialidad.</li>
                                <li> Acreditar la Residencia Profesional y Servicio Social.</li>
                                <li> Acreditar Actividades Complementarias.</li>
                                <li> Aprobar el Requisito de Comprensión del Idioma Inglés.</li>
                            </ol>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
