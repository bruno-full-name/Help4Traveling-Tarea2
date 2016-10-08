<%-- 
    Document   : consultarPromCliente
    Created on : 16/09/2016, 01:39:45 PM
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
    <link href="css/consultarPromociones.css" rel="stylesheet" type="text/css">
    <link href="css/algo.css" rel="stylesheet" type="text/css">
  </head><body>
    <jsp:include page="templates/headerC.jsp"/>
    <!---->
    <!--CUERPO-->
    <!---->
    <div class="divPrincipal">
      <div class="section" style="padding-bottom: 0px">
        <div class="container-fluid">
          <div class="col-md-12">
            <h1 class="text-center" style="color: #313131; font-family: Helvetica">PROMOCIONES</h1>
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
      <div class="section" style="margin-top: -55">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-3">
              <center>
                <h2 style="font-family: Helvetica; color: #01529e; font-style: italic">Seleccionar</h2>
                <hr style="color: black; background-color: black">
                <div class="section">
                  <div class="container-fluid">
                    <div class="row">
                      <div class="col-md-12">
                        <table class="table" style="background-color: #979797; margin-top: -30; margin-left: 7">
                          <thead style="background-color: #545454; color: white; font-family: Helvetica; font-size: 14">
                            <tr>
                              <th style="width: 300">NICKNAME PROV.</th>
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
            <div class="col-md-3">
              <center>
                <h2 style="font-family: Helvetica; color: #01529e; font-style: italic">Información</h2>
                <hr style="color: black; background-color: black">
              </center>
              <div class="col-md-6">
                <h4 style="font-family: Helvetica; font-size: 16">Nombre:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Proveedor:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Descuento:</h4>
              </div>
              <div class="col-md-6">
                <h4 style="font-family: Helvetica; font-size: 16">...</h4>
                <h4 style="font-family: Helvetica; font-size: 16">...</h4>
                <h4 style="font-family: Helvetica; font-size: 16">...</h4>
              </div>
            </div>
            <div class="col-md-6">
              <center>
                <h2 style="font-family: Helvetica; color: #01529e; font-style: italic">Servicios asociados</h2>
                <hr style="color: black; background-color: black">
                <div class="section">
                  <div class="container-fluid">
                    <div class="row">
                      <div class="col-md-12">
                        <table class="table" style="background-color: #979797; margin-top: -30; margin-left: 7">
                          <thead style="background-color: #545454; color: white; font-family: Helvetica; font-size: 14">
                            <tr>
                              <th style="width: 300">NOMBRE</th>
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
          </div>
        </div>
      </div>
      <!---->
      <!---->
    </div>
    <!---->
    <!--FOOTER-->
    <!---->
    <jsp:include page="templates/footer.jsp"/>

</body></html>
