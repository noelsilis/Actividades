<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <!--CSS Local-->
        <link rel="stylesheet" type="text/css" href="css/especialidad.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/frames.css?1.0.0" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css?1.0.0" />
        <!--iconos de la plataforma fontawesome-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>Especialidad</title>
    </head>
    <body>
    <section id="sec1">
        <div class="contenedor-texto">
            <h2><c:out value="${espInfo[0].Nombre}"/></h2>
            <p><c:out value="${espInfo[0].Objetivo}"/></p>
            <a href="#sec2">Section 2</a>
        </div>
        <img src="img/<c:out value="${espInfo[0].Nombre}"/>.svg?1.0.0">
    </section>
    <section id="sec2">
        <div class="contenedor-texto">
            <h2>Perfil de Egreso</h2>
            <ol type="A">
                <c:forEach var="perejil" items="${espEgr}">
                    <li>${perejil.capacidad}</li>
                    </c:forEach>
            </ol>
            <a href="#sec3">Section 3</a>
        </div>
    </section>
    <section id="sec3">
        <div class="contenedor-texto">
            <h2>Asignaturas</h2>
            <div class="table-responsive">
                <table class="table table-borderless tabla-aisgnatura">
                    <thead>
                        <tr>
                            <th>Clave</th>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                        </tr>
                        <c:forEach var="asignatura" items="${espAsig}">
                            <tr>
                                <td>${asignatura.idasignatura}</td>
                                <td>${asignatura.MC_NombreAsignatura}</td>
                                <td>${asignatura.descripcion}</td>
                            </tr>
                        </c:forEach>
                    </thead>   
                </table>
            </div>
            <a href="#sec4">Section 4</a>
        </div>
    </section>
    <section id="sec4">
        <div class="contenedor-texto">
            <h2>Malla Curricular</h2>
            <p>RETICULA DE INGENIERÍA EN SISTEMAS COMPUTACIONALES CLAVE ISIC-2010-224, Especilidad: ${espInfo[0].Nombre}</p>
            <div class="table-responsive container">
                <table class="table table-borderless tabla">
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
                                <td id="etiqueta${aux2}" class="${as1[aux].Nombre}" >
                                    <b>${as1[aux].MC_NombreAsignatura}</b>
                                    <br>${as1[aux].MC_HorasTot}
                                    <br>${as1[aux].MC_ClaveAsignatura}
                                </td>
                                <c:set var="aux2" value="${aux2+1}"/>
                                <td id="etiqueta${aux2}" class="${as2[aux].Nombre}">
                                    <b>${as2[aux].MC_NombreAsignatura}</b>
                                    <br>${as2[aux].MC_HorasTot}
                                    <br>${as2[aux].MC_ClaveAsignatura}
                                </td>
                                <c:set var="aux2" value="${aux2+1}"/>
                                <td id="etiqueta${aux2}" class="${as3[aux].Nombre}">
                                    <b>${as3[aux].MC_NombreAsignatura}</b>
                                    <br>${as3[aux].MC_HorasTot}
                                    <br>${as3[aux].MC_ClaveAsignatura}
                                </td>
                                <c:set var="aux2" value="${aux2+1}"/>
                                <td id="etiqueta${aux2}" class="${as4[aux].Nombre}">
                                    <b>${as4[aux].MC_NombreAsignatura}</b>
                                    <br>${as4[aux].MC_HorasTot}
                                    <br>${as4[aux].MC_ClaveAsignatura}
                                </td>
                                <c:set var="aux2" value="${aux2+1}"/>
                                <td id="etiqueta${aux2}" class="${as5[aux].Nombre}">
                                    <b>${as5[aux].MC_NombreAsignatura}</b>
                                    <br>${as5[aux].MC_HorasTot}
                                    <br>${as5[aux].MC_ClaveAsignatura}
                                </td>
                                <c:set var="aux2" value="${aux2+1}"/>
                                <td id="etiqueta${aux2}" class="${as6[aux].Nombre}">
                                    <b>${as6[aux].MC_NombreAsignatura}</b>
                                    <br>${as6[aux].MC_HorasTot}
                                    <br>${as6[aux].MC_ClaveAsignatura}
                                </td>
                                <c:set var="aux2" value="${aux2+1}"/>
                                <td id="etiqueta${aux2}" class="${as7[aux].Nombre}">
                                    <b>${as7[aux].MC_NombreAsignatura}</b>
                                    <br>${as7[aux].MC_HorasTot}
                                    <br>${as7[aux].MC_ClaveAsignatura}
                                </td>
                                <c:set var="aux2" value="${aux2+1}"/>
                                <td id="etiqueta${aux2}" class="${as8[aux].Nombre}">
                                    <b>${as8[aux].MC_NombreAsignatura}</b>
                                    <br>${as8[aux].MC_HorasTot}
                                    <br>${as8[aux].MC_ClaveAsignatura}
                                </td>
                                <c:set var="aux2" value="${aux2+1}"/>
                                <td id="etiqueta${aux2}">
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
            <table class="table table-borderless detalles ">
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
                                    <td>${area[2].Nombre} ${area[2].Horas}hrs</td>
                                    <td><i class="fas fa-circle" style="color: #A5A71F;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[3].Nombre} ${area[3].Horas}hrs</td>
                                    <td><i class="fas fa-circle" style="color: #B17205;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[4].Nombre} ${area[4].Horas}hrs</td>
                                    <td><i class="fas fa-circle" style="color: #8664C5;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[5].Nombre} ${area[5].Horas}hrs</td>
                                    <td><i class="fas fa-circle" style="color: #0366AF;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[6].Nombre} ${area[6].Horas}hrs</td>
                                    <td><i class="fas fa-circle" style="color: #78BDD4;"></i></td>
                                </tr>
                                <tr>
                                    <td>${area[7].Nombre} ${area[7].Horas}hrs</td>
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
                        <td>
                            <a href="#sec1">Section 1</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section> 
    <h1 id="tam" style="font-size:0px;"><c:out value = "${aux2}"/></h1>  
    <script type="text/javascript" src="js/mallaCurricular.js?1.0.0"></script>
    <iframe class="footer-frame" src="footer.htm" title="Iframe Example"></iframe>

</body>
</html>
