<%-- 
    Document   : consultarServCliente
    Created on : 16/09/2016, 01:41:54 PM
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
    <link href="css/consultarServicios.css" rel="stylesheet" type="text/css">
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
      <!---->
      <div class="section" style="padding-bottom: 0px">
        <div class="container-fluid">
          <div class="col-md-12">
            <h1 class="text-center" style="color: #313131; font-family: Helvetica">SERVICIOS</h1>
            <hr style="color: black; background-color: black;">
          </div>
        </div>
      </div>
      <div class="section" style="padding-top: 0px; padding-bottom: 0px">
        <div class="container-fluid">
          <div class="col-md-3">
            <input type="text" class="form-control" id="barraDeBusqueda" placeholder="Servicio o promocion">
          </div>
          <div class="col-md-1">
            <button type="submit" class="btn button">Buscar</button>
          </div>
        </div>
      </div>
      <hr style="color: black; background-color: black;">
      <!--inicio plantilla JSP-->
      <div id="contact-section">
        <div class="col-md-3">
            <!-------------------->
        </div>
        <div class="col-md-9">
          <div class="row" style="border-style: solid; border-width: 2px;">
            <div class="col-md-3">
            <!--ACA va la IMAGEN-->
              <div class="form-group">
                <i class="fa fa-2x fa-fw fa-user t-plus"></i>
              </div>
            </div>
            <div class="col-md-6">
              <!--ACA va el NOMBRE Y DESC Y CAT-->
              <div class="row">
                <div class="col-md-12 ">
                  <!--ACA va el NOMBRE-->
                  <div class="form-group">
                    <a href="#">Titulo</a>
                  </div>
                </div>
                <div class="col-md-12 ">
                  <!--ACA va CAT-->
                  <div class="form-group">
                    <a href="#">Categorias</a>
                  </div>
                </div>
                <div class="col-md-12 ">
                  <!--ACA va DESC-->
                  <div class="form-group">
                    <a href="#">Descripcion</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-2">
              <!--ACA va PRECIO Y CIUDAD-->
              <div class="row">
                <div class="col-md-12 ">
                  <!--ACA va el PRECIO-->
                  <div class="form-group">
                    <a href="#">Precio</a>
                  </div>
                </div>
                <div class="col-md-12 ">
                  <!--ACA va CIUDAD-->
                  <div class="form-group">
                    <a href="#">Ciudad</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-1">
              <!--ACA va CARRITO-->
              <div class="form-group">
                <i class="fa fa-2x fa-fw fa-shopping-cart t-plus"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--fin plantilla JSP-->
      <!---->
    </div>
    <!---->
    <!--FOOTER-->
    <!---->
    <jsp:include page="templates/footer.jsp"/>


</body></html>

