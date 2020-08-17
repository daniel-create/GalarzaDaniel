<%-- 
    Document   : EditarCarrera
    Created on : 16/08/2020, 11:30:56 PM
    Author     : User
--%>

<%@page import="Modelo.Carrera"%>
<%@page import="ModeloDAO.CarreraDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Carrera</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%
                CarreraDAO estudianteDAO = new CarreraDAO();
                int s_idCarrera = Integer.valueOf(request.getParameter("f_idCarrera"));
                Carrera Carrera = (Carrera)CarreraDAO.buscarCarrera(s_idCarrera);
            %>
            
            <div class="row text-center">
                <h2>Editar Carrera</h2>
            </div><br>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-9">
                    <form name="EditarCarreraForm" action="Controlador" method="get" class="form-horizontal">
                        <div class="form-group">
                            <label for="1" class="col-md-2 control-label">Nombre</label>
                            <div class="col-md-4">
                              <input class="form-control" type="text" name="f_nombre" value="<% out.println(Carrera.getNombre()); %>" maxlength="30"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="2" class="col-sm-2 control-label">Apellidos</label>
                            <div class="col-md-4">
                              <input class="form-control" type="text" name="f_apellidos" value="<% out.println(Carrera.getApellidos()); %>" maxlength="50"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">DNI</label>
                            <div class="col-md-3">
                              <input class="form-control" type="text" name="f_dni" value="<% out.println(Carrera.getDni()); %>" maxlength="8"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">Codigo</label>
                            <div class="col-md-3">
                              <input class="form-control" type="text" name="f_codigo" value="<% out.println(Carrera.getCodigo()); %>" maxlength="9"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">Direccion</label>
                            <div class="col-md-6">
                                <input class="form-control" type="text" name="f_direccion" value="<% out.println(Carrera.getDireccion()); %>" maxlength="50"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">Estado</label>
                            <div class="col-xs-1">
                              <input class="form-control" type="text" name="f_estado" value="<% out.println(Carrera.getEstado()); %>" maxlength="1"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <input class="btn btn-primary" type="submit" value="Editar Estudiante" name="editar" />
                                <input type="hidden" value="editarestudiante02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(Carrera.getIdCarrera()); %>" name="f_idestudiante">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <ol class="breadcrumb">
                        <li><a href="index.html">Inicio</a></li>
                        <li><a href="Controlador?f_accion=listarestudiante">Lista Estudiantes</a></li>
                        <li class="active">Editar Estudiante</li>
                </ol>
            </div>
        </div>
    </body>
</html>
