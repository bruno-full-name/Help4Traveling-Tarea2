<%-- 
    Document   : verPerfil
    Created on : 16/09/2016, 01:43:53 PM
    Author     : Agustin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/verPerfil.css" rel="stylesheet" type="text/css">
    <link href="css/algo.css" rel="stylesheet" type="text/css">
  </head><body>
    <jsp:include page="templates/headerC.jsp"/>
<!---->
<!--CUERPO-->
<!---->
  <div class="divPrincipal">
<!---->
    <div class="section" style="background-color: #373737">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6 fuente">
            <h1 style="color: white; font-family: Helvetica; font-size: 20px; font-style: italic ">Nickname</h1>
            <hr style="color: white; background-color: white;">
            <h3 style="color: white; font-family: Helvetica; font-size: 15px; font-style: italic ">Nombre:</h3>
            <h3 style="color: white; font-family: Helvetica; font-size: 15px; font-style: italic ">Apellido:</h3>
            <h3 style="color: white; font-family: Helvetica; font-size: 15px; font-style: italic ">Email:</h3>
            <h3 style="color: white; font-family: Helvetica; font-size: 15px; font-style: italic ">Fecha Nac.:</h3>
          </div>
          <div class="col-md-6">
            <img src="" class="img-responsive">
          </div>
        </div>
      </div>
    </div>
    <div class="section" style="background-color: #575757">
    <div class="container-fluid">
      <div class="row col-md-6">
        <h1 style="color: white; font-family: Helvetica; font-size: 20px; font-style: italic ">Reservas</h1>
        <div class="btn-group btn-group-lg" style="margin-top: -40; margin-left: 110">
          <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="background-color: #373737; width: 480; height: 40"> Seleccionar reserva <span class="fa fa-caret-down"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="#">Action</a>
            </li>
          </ul>
        </div>
        <hr style="color: white; background-color: white;">
      </div>
    </div>
  </div>
  <div class="section" style="background-color: #575757">
    <div class="container-fluid"></div>
  </div>
<!---->
  </div>
<!---->
<!--FOOTER-->
<!---->
<jsp:include page="templates/footer.jsp"/>


</body></html>

