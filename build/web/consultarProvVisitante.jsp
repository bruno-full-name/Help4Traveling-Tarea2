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
  <link href="css/consultarProveedoresVisitante.css" rel="stylesheet" type="text/css">
  <link href="css/algo.css" rel="stylesheet" type="text/css">
</head><body>
       <div class="navbar navbar navbar-static-top dkd">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle dkd" data-toggle="collapse" data-target="#navbar-ex-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand dkd" href="index.jsp" style="font-size: 40">HELP<b>4</b>TRAVELING</a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-ex-collapse">
              <ul class="nav navbar-nav navbar-right dkd">
                <li>
                  <a href="consultarServVisitante.jsp" class="dkd">SERVICIOS</a>
                </li>
                <li>
                  <a href="consultarPromVisitante.jsp" class="dkd">PROMOCIONES</a>
                </li>
                <li>
                  <a href="consultarProvVisitante.jsp" class="dkd">PROVEEDORES</a>
                </li>
                <li>
                  <a href="registrarCliente.jsp" class="dkd">REGISTRARSE</a>
                </li>
                <li>
                  <a href="#" class="dkd">INICIAR SESION</a>
                </li>
              </ul>
            </div>
        </div>
    </div>
<!---->
<!--CUERPO-->
<!---->
  <div class="divPrincipal">
<!---->
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
       
<!---->
  </div>
<!---->
<!--FOOTER-->
<!---->
<jsp:include page="templates/footer.jsp"/>

  </body></html>

