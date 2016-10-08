<%--
    Document   : header
    Created on : 06-oct-2016, 14:06:42
    Author     : Antares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
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
    </body>
</html>
