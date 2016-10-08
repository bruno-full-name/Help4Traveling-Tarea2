<%@page import="help4travelling.DtPromocion"%>
<%@page import="help4travelling.IControladorArticulo"%>
<%@page import="help4travelling.Factory"%>
<%@page import="help4travelling.Promocion"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="help4travelling.ManejadorSQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/consultarPromocionesVisitante.css" rel="stylesheet" type="text/css">
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
<%-- Cargo todas las promociones desde la bd, en un comboBox. --%>
           
           <%
               IControladorArticulo ICArticulo = Factory.GetInstance().getIControladorArticulo();
               ManejadorSQL.GetInstance().init("192.168.10.132");
               ArrayList<DtPromocion> prom = ICArticulo.listarPromociones();
           %>
           <form action="DevolverPromocion" method="post">
               <select name="prom">
               <% // cargo promociones desde la bd.
                   for(int x = 0; x < prom.size(); x++){
               %>
               <option><%= prom.get(x).getNickProv() + ", " + prom.get(x).GetNombre() %></option>
               <% }%>
           </select>
           <input type="submit" value="Seleccionar" />
           </form>
           
       <%-- Muestro datos del proveedor seleccionado --%>
       
       <% DtPromocion promo = (DtPromocion)request.getAttribute("promocion"); %>
       
       <% if(promo != null){ %>
           <table border="0">
               <tbody>
                   <tr>
                       <td>Nickname Proveedor: </td>
                       <td><%= promo.getNickProv().trim() %></td>
                   </tr>
                   <tr>
                       <td>Nombre: </td>
                       <td><%= promo.GetNombre().trim() %></td>
                   </tr>
                   <tr>
                       <td>Descuento: </td>
                       <td><%= promo.GetDescuento() %></td>
                   </tr>
                   <tr>
                       <td>Precio: </td>
                       <td><%= promo.GetPrecio() %></td>
                   </tr>
               </tbody>
           </table>
                   
           <%-- Cargo los servicios asociados a la promocion en un comboBox, para ser seleccionados, y mostrados mas adelante. --%>

           <form action="DevolverServicio" method="post">
               <select name="servicio">
                   <% // cargo promociones desde la bd.
                       for(int x = 0; x < promo.GetServicios().size(); x++){
                   %>
                   <option><%= promo.GetServicios().get(x).trim() %></option>
                   <% }%>
               </select>
               <input type="submit" value="Seleccionar" />
           </form>
           
           
               
       <% } // endif promocion obtenida es null o no. %> 
<!---->
  </div>
<!---->
<!--FOOTER-->
<!---->
<jsp:include page="templates/footer.jsp"/>


  </body></html>
