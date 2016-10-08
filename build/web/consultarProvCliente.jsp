<%@page import="java.lang.String"%>
<%@page import="help4travelling.DtProveedor"%>
<%@page import="help4travelling.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="help4travelling.ManejadorSQL"%>
<%@page import="Modelo.ModelUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/consultarProveedores.css" rel="stylesheet" type="text/css">
    <link href="css/algo.css" rel="stylesheet" type="text/css">
  </head><body>
    <div class="navbar navbar navbar-static-top dkd">
        <div class="container-fluid">
            <div class="row">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle dkd" data-toggle="collapse" data-target="#navbar-ex-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand dkd" href="inicioCliente.jsp" style="font-size: 40">HELP<b>4</b>TRAVELING</a>
                    </div>
                    <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="consultarReservas.jsp" class="dkd">RESERVAS</a>
                            </li>
                            <li>
                                <a href="consultarServCliente.jsp" class="dkd">SERVICIOS</a>
                            </li>
                            <li>
                                <a href="consultarPromCliente.jsp" class="dkd">PROMOCIONES</a>
                            </li>
                            <li>
                                <a href="consultarProvCliente.jsp" class="dkd">PROVEEDORES</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="container-fluid">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="consultarReservaActual.jsp" class="dkd"><i class="fa fa-2x fa-cart-plus fa-fw"></i></a>
                        </li>
                        <li>
                            <a href="verPerfil.jsp" class="dkd" style="position: relative;  bottom: -5;">John Connor </a>
                        </li>
                        <li>
                            <a class=" btn dropdown-toggle dkd" data-toggle="dropdown"><i class="fa fa-2x fa-fw fa-user t-plus"></i><span class="fa fa-caret-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="verPerfil.jsp">Ver perfil</a>
                                </li>
                                <li>
                                    <a href="index.jsp">Cerrar Sesion</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!---->
    <!--CUERPO-->
    <!---->
    <div class="divPrincipal">
      <div class="section">
        <div class="container-fluid">
          <div class="col-md-12">
            <h1 class="text-center" style="color: #313131; font-family: Helvetica">PROVEEDORES</h1>
            <hr style="color: black; background-color: black;">
          </div>
        </div>
      </div>
      <div class="section" style="margin-top: -55">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-3" style="margin-top: -30">
              <center>
                <h2 style="font-family: Helvetica; color: #01529e; font-style: italic">Seleccionar proveedor</h2>
                <hr style="color: black; background-color: black">
                <div class="section">
                  <div class="container-fluid">
                    <div class="row">
                      <div class="col-md-12">
                        <table class="table" style="background-color: #979797; margin-top: -30; margin-left: 7">
                          <thead style="background-color: #545454; color: white; font-family: Helvetica; font-size: 14">
                            <tr>
                              <th style="width: 300">NICKNAME</th>
                              <th style="width: 300">NOMBRE</th>
                            </tr>
                          </thead>
                          <tbody style="color: white; font-family: Helvetica; font-size: 13">
                            <tr>
                              <td>Batch script</td>
                              <td>Fulano</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </center>
            </div>
            <div class="col-md-3" style="margin-top: -30">
              <center>
                <h2 style="font-family: Helvetica; color: #01529e; font-style: italic">Información</h2>
                <hr style="color: black; background-color: black">
              </center>
              <div class="col-md-6">
                <h4 style="font-family: Helvetica; font-size: 16">Nickname:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Nombre:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Apellido:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Fecha Nac.:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Email:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Nombre empresa:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Link empresa:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Imagen:</h4>
              </div>
              <div class="col-md-6">
                <h4 style="font-family: Helvetica; font-size: 16">aca va el nombre</h4>
                <h4 style="font-family: Helvetica; font-size: 16">aca va el proveedor</h4>
                <h4 style="font-family: Helvetica; font-size: 16">...</h4>
                <h4 style="font-family: Helvetica; font-size: 16">...</h4>
                <h4 style="font-family: Helvetica; font-size: 16">...</h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>



<!--CODIGO YA IMPLEMENTADO FALTA MESCLAR CON LA PARTE VISUAL-->
<%-- Cargo todos los proveedores desde la bd, en un comboBox. --%>
            
            <%
                ManejadorSQL.GetInstance().init("192.168.10.132");
                ArrayList<String> prov = ManejadorSQL.GetInstance().cargarProveedores();
            %>
            <form action="DevolverProveedor" method="post">
                <select name="listProv">
                <% // cargo proveedores en combobox desde la bd.
                    for(int x = 0; x < prov.size(); x++){
                %>
                <option> <%= prov.get(x).toString() %> </option>
                <% }%>
            </select>
            <input type="submit" value="Seleccionar" />
            </form>
            
        <%-- Muestro datos del proveedor seleccionado --%>
        
        <% DtProveedor p = (DtProveedor)request.getAttribute("prov"); %>
        
        <% if(p != null){ %>
        <table border="0">
            <tbody>
                <tr>
                    <td>Nickname: </td>
                    <td><%= p.getNick().trim() %></td>
                </tr>
                <tr>
                    <td>Nombre: </td>
                    <td><%= p.getNombre().trim() %></td>
                </tr>
                <tr>
                    <td>Apellido: </td>
                    <td><%= p.getApellido().trim() %></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><%= p.getEmail().trim() %></td>
                </tr>
                <tr>
                    <td>Fecha Nac.: </td>
                    <td><%= p.getFechaN().toString().trim() %></td>
                </tr>
                <tr>
                    <td>Nombre Empresa: </td>
                    <td><%= p.getNombreEmpresa().trim() %></td>
                </tr>
                <tr>
                    <td>LinkEmpresa: </td>
                    <td><%= p.getUrl().trim() %></td>
                </tr>
                <% if(request.getAttribute("imagen") != null){%>
                <tr>
                    <td>Imagen: </td>
                    <td><%= (Byte[])request.getAttribute("imagen") %></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        
                

        
                
        <%} // endif proveedor es null how to insert images in html from database)o no %> 
        
        
<!-- FIN DE CODIGO YA IMPLEMENTADO FALTA MESCLAR CON LA PARTE VISUAL-->


    
    <!---->
    <!--FOOTER-->
    <!---->
    <jsp:include page="templates/footer.jsp"/>


</body></html>
