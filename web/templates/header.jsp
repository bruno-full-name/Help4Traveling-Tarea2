<%@page contentType="text/html" pageEncoding="UTF-8"%>


        
 
        
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
                  <a data-toggle="modal" data-target="#registrarse" class="dkd" >REGISTRARSE</a>
                </li>
                <li>
                  <a href="inicioCliente.jsp" class="dkd">INICIAR SESION</a>
                </li>
              </ul>
            </div>
        </div>
    </div>

 <div id="registrarse" class="modal fade" role="dialog">
     
     
     
      <div class="modal-dialog" style="width: 70%">
          
          
        <div class="modal-content">
          <div class="modal-header" style="background-color: #4A4C4E; min-height: 50px; max-height: 50px">
            <button type="button" class="close" data-dismiss="modal" style="color: white">×</button>
            <h3 class="modal-title" style="font-family: Helvetica; color: #8e969f; margin-top: -5px">
              <center>REGISTRARSE</center>
            </h3>
          </div>
          <div class="modal-body" style="height: 70%; max-height: 650px; min-height: 650px; overflow-y: auto; background-color: white">
            <div class="row" style="height: 35%">
              <div class="row" style="height: 70%; width: 100%; margin-left: 0px">
                <center>
                  <img src="img/logo2.png">
                </center>
              </div>
              <div class="row" style="height: 20%; width: 100%; margin-left: 0px">
                <center>
                  <h1 style="font-family: Helvetica; color:#01529e; margin-top: 0px">HELP4TRAVELING</h1>
                </center>
              </div>
            </div>
            <div class="row" style="height: 60%">
              <div class="col-md-11" style="width: 98%; margin-left: 5px">
                  <form action="ControllerUsuario" method="post" class="form-horizontal" role="form" onsubmit="Tamal()">
                  <center>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label for="nick" class="control-label">Nick</label>
                      </div>
                      <div class="col-sm-9">
                        <input name="nick" type="text" class="form-control" id="nick" placeholder="Nick">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label for="Email" class="control-label">Email</label>
                      </div>
                      <div class="col-sm-9">
                        <input type="text" name="email" class="form-control" id="inputMail" placeholder="Email">
                      </div>
                      <div class="form-group"></div>
                      <div class="col-sm-2">
                        <label for="inputPassword" class="control-label">Password</label>
                      </div>
                      <div class="col-sm-9">
                        <input name="pass" type="password" class="form-control" id="inputPassword" placeholder="Password">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label for="inputConfPassword" class="control-label">Confirmar Password</label>
                      </div>
                      <div class="col-sm-9">
                        <input name="pass2" type="password" class="form-control" id="inputConfPassword" placeholder="Confirmar Password">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label for="inputNombre" class="control-label">Nombre</label>
                      </div>
                      <div class="col-sm-9">
                        <input name="nombre" type="text" class="form-control" id="inputNombre" placeholder="Nombre">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label for="inputApellido" class="control-label">Apellido</label>
                      </div>
                      <div class="col-sm-9">
                        <input name="apellido" type="text" class="form-control" id="inputApellido" placeholder="Apellido">
                      </div>
                    </div>
                    <h4>Facha de Nacimiento</h4>
                    <br>
                    <center>
                      <div style="width: 100%; margin-left: 0px" class="row">
                        <div class="col-md-3" style="margin-left:90px">
                          <div class="col-sm-2">
                            <label for="inputDia" class="control-label">Dia</label>
                          </div>
                          <div class="col-sm-9">
                            <input name="fnac1" type="text" class="form-control" id="inputDia" placeholder="Dia">
                          </div>
                        </div>
                        <div class="col-md-3" style="margin-left:10">
                          <div class="col-sm-2">
                            <label for="inputMes" class="control-label">Mes</label>
                          </div>
                          <div class="col-sm-9">
                            <input name="fnac2" type="text" class="form-control" id="inputMes" placeholder="Mes">
                          </div>
                        </div>
                        <div class="col-md-3" style="margin-left:25">
                          <div class="col-sm-2">
                            <label for="inputAnio" class="control-label">Año</label>
                          </div>
                          <div class="col-sm-9">
                            <input name="fnac3" type="text" class="form-control" id="inputAnio" placeholder="Año">
                          </div>
                        </div>
                      </div>
                    </center>
                  </center>
                      <div class="modal-footer" style="background-color: #8e969f">
                          <input class="btn-toolbar" type="submit" name="enviar" value="Aceptar"/>
                        <!--<input type="submit" class="btn btn-default" data-dismiss="modal" style="background-color: #4A4C4E; color: white; border: none; font-family: Helvetica">-->
                      </div>
                </form>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </div>
    
