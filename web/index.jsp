<%-- 
    Document   : index
    Created on : 13-abr-2021, 18:31:18
    Author     : Wilber-Zruc
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Vacunas" %>
<%@page import="com.emergentes.modelo.GestorVacunas" %>
<% 
   if (session.getAttribute("agenda") == null){
       GestorVacunas objeto1 = new GestorVacunas();
       
       objeto1.insertarVacunas(new Vacunas(1, "Brunito Diaz", "25","1.40","Si"));
       objeto1.insertarVacunas(new Vacunas(2, "Juancito Pinto", "30","1.52","No"));

       
       session.setAttribute("agenda", objeto1);
   }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>PRIMER PARCIAL</title>
    </head>
    <body>
        <br>
        <br>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-4">
                    <table border="5">
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th>PRIMER PARCIAL</th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th>Nombre: WILBER WILSON CRUZ MARQUEZ</th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th>Carnet: 8566577 PT.</th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <br>
        <br>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-6">

                    <h1 class="text-center">REGISTRO DE VACUNAS</h1>
                        <a class="btn btn-info" href="Controller?op=nuevo">Nuevo</a>
                        <table class="table" border="6">
                            <tr bgcolor="9298A1">
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Peso</th>
                                <th>Talla</th>
                                <th>Vacuna</th>
                                <th></th>
                                <th></th>
                            </tr>
                            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                            <tr bgcolor="D5D8DD " >
                                <td>${item.id}</td>
                                <td>${item.nombre}</td>
                                <td>${item.peso}</td>
                                <td>${item.talla}</td>
                                <td>${item.vacuna}</td>
                                <td><a class="btn btn-success" href="Controller?op=editar&id=${item.id}" onclick="return(confirm('Esta seguro desea EDITAR este registro??'))">Editar</a></td>
                                <td><a class="btn btn-danger" href="Controller?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro desea ELIMINAR este registro??'))">Eliminar</a></td>
                            </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
    </body>
</html>
