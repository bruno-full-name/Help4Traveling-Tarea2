<%@page import="help4travelling.DtServicio"%>
<%@page import="help4travelling.DtCategoria"%>
<%@page import="help4travelling.IControladorCategoria"%>
<%@page import="java.lang.String"%>
<%@page import="help4travelling.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="help4travelling.ManejadorSQL"%>
<%@page import="help4travelling.Factory"%>
<%@page import="Modelo.ModelUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/consultarServiciosVisitante.css" rel="stylesheet" type="text/css">
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

      <%-- Cargo todas las categorias del sistema, en una lista(comboBox). --%>
      
          <%  ManejadorSQL.GetInstance().init("192.168.10.132"); %>
          <%!
              IControladorCategoria ICCategoria = help4travelling.Factory.GetInstance().getIControladorCategoria();
              ArrayList<DtCategoria> cats = ICCategoria.listarCategorias();
          %>
          
          <form action="DevolverServiciosXcat" method="post">
              <select name="categoria" size="20">
                  <% // cargo proveedores en combobox desde la bd.
                      for(int x = 0; x < cats.size(); x++){
                  %>
                  <option> <%= cats.get(x).getNombre().trim() %> </option>
                  <% }%>
              </select>
              <input type="submit" value="Seleccionar" />
          </form>
      
      <%-- Cargo todos los proveedores desde la bd, en un comboBox. --%>
      
      <% if(request.getAttribute("servicios") != null){ %>
          <% ArrayList<DtServicio> s = (ArrayList<DtServicio>)request.getAttribute("servicios");%>
          <% if(s.size() != 0){ %>
                  <form action="DevolverServicio" method="post">
                      <select name="servicio">
                      <% for(int x = 0; x < s.size(); x++){ %>
                              <option> <%= s.get(x).getNickProveedor()+ ", " + s.get(x).getNombre() %> </option>
                      <% }%>
                      </select>
                      <input type="submit" value="Seleccionar" />
                  </form>
          <% } %>
      <% } // endif hay servicios o no%>
          
      <%-- Muestro datos del servicio seleccionado. --%>
      
      <% DtServicio serv = (DtServicio)request.getAttribute("serv"); %>
    
      <% if(serv != null){ %>
                    

      <% } // endif promocion obtenida es null o no. %> 
<!---->
  </div>
<!---->
<!--FOOTER-->
<!---->
 <jsp:include page="templates/footer.jsp"/>

  </body></html>
