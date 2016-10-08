<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/inicio.css" rel="stylesheet" type="text/css">
        <link href="css/algo.css" rel="stylesheet" type="text/css">
    </head><body>
        <style>
            body {
                              background-image: url("img/7.jpg");
                              background-repeat: no-repeat;
                              background-size: 100% 100%;
                              }
          </style>
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
            <div class="section">
                <div class="container-fluid">
                    <div class="col-md-12">
                        <center>
                            <img class="img-responsive" src="img/logo2.png">
                            <div class="container-fluid">
                                <h1 style="font-family: Helvetica; font-size: 70; color: #01529e">HELP
                                    <b>
                                        <a style="font-size: 90; color: #121212">4</a>
                                    </b>TRAVELING</h1>
                            </div>
                        </center>
                    </div>
                </div>
            </div>
            <!---->
        </div>
        <!---->
        <!--FOOTER-->
        <!---->
        <jsp:include page="templates/footer.jsp"/>


</body></html>
