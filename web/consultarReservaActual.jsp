<%-- 
    Document   : consultarReservaActual
    Created on : 16/09/2016, 01:41:16 PM
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
    <link href="css/consultarReservaActual.css" rel="stylesheet" type="text/css">
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
      <!-- INICIO DIV PRINCIPAL. abajo va toda la shit -->
      <div class="section">
        <div class="container-fluid">
          <div class="col-md-12">
            <h1 class="text-center" style="color: #313131; font-family: Helvetica">RESERVA ACTUAL</h1>
            <hr style="color: black; background-color: black;">
          </div>
        </div>
      </div>
      <div class="section" style="margin-top: -55">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-5" style="margin-top: -30">
              <center>
                <h2 style="font-family: Helvetica; color: #01529e; font-style: italic">Servicios incluídos actualmente</h2>
                <hr style="color: black; background-color: black">
                <div class="section">
                  <div class="container-fluid">
                    <div class="row">
                      <div class="col-md-6">
                        <table class="table" style="background-color: #979797; margin-top: -30; margin-left: 7">
                          <thead style="background-color: #545454; color: white; font-family: Helvetica; font-size: 14">
                            <tr>
                              <th style="width: 300">NOMBRE</th>
                              <th style="width: 200">PROVEEDOR</th>
                              <th style="width: 150">F. INICIO</th>
                              <th style="width: 150">F. FIN</th>
                              <th style="width: 150">CANTIDAD</th>
                              <th>PRECIO</th>
                            </tr>
                          </thead>
                          <tbody style="color: white; font-family: Helvetica; font-size: 13">
                            <tr>
                              <td>Batch script</td>
                              <td>Fulano</td>
                              <td>10/10/2016</td>
                              <td>15/11/2016</td>
                              <td>(n+1)!</td>
                              <td>1500</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </center>
            </div>
            <div class="col-md-7" style="margin-top: -30">
              <center>
                <h2 style="font-family: Helvetica; color: #01529e; font-style: italic">Información detallada</h2>
                <hr style="color: black; background-color: black">
              </center>
              <div class="col-md-3">
                <h4 style="font-family: Helvetica; font-size: 16">Nombre:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Proveedor:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Precio:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Ciudad Origen:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Ciudad Destino:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Imagenes:</h4>
              </div>
              <div class="col-md-9">
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
    <!-- FIN DIV PRINCIPAL -->
    </div>
    <!---->
    <!--FOOTER-->
<jsp:include page="templates/footer.jsp"/>


</body></html>

