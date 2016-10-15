<%@page import="Modelo.ModelArticulo"%>
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
    <jsp:include page="templates/header.jsp"/>
<!---->
<!--CUERPO-->
<!---->
  <div class="divPrincipal">
<!---->
    
    <div class="section">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12" style="border-bottom-style: solid; border-color: rgb(1, 82, 158); border-width: 9px">
            <h1 class="text-center" style="color: #313131; font-family: Helvetica; ">SERVICIOS</h1>
          </div>
        </div>
        <div class="row" style="background-color: #01529e; min-height: 70px; max-height: 70px">
          <div class="col-md-3" style="background-color: #01529e; min-height: 70px; max-height: 70px"></div>
          <div class="col-md-6" style="background-color: #01529e; min-height: 70px; max-height: 70px">
            <center>
                <input type="text" style="width: 80%; height: 32px; margin-top: 15px; font-family: Helvetica; font-size: 22px; font-style: italic; color: #01529e" placeholder="Introduzca un filtro...">
              <button class="btn btn-primary" style="height: 32px; font-family: Helvetica; font-size: 20px; margin-top: -7px">Aplicar</button>
            </center>
          </div>
          <div class="col-md-3" style="background-color: #01529e; min-height: 70px; max-height: 70px">
            <h3 style="color: white; margin-top: 15px">Listar:</h3>
            <button class="btn btn-primary" style="font-family: Helvetica; width: 60px; margin-top: -65px; margin-left: 80px">A-Z</button>
            <button class="btn btn-primary" style="font-family: Helvetica; width: 60px; margin-top: -65px">$</button>
          </div>
        </div>
        <div class="row">
          <!-- INICIO "TREEVIEW" CON CATEGORIAS -->
          <div class="col-md-3" style="background-color: white; min-height: 550px; max-height: 550px; overflow-y: auto">
            <div class="col-md-12">
              <div class="row" style="margin-top: 20px; border-top-style: solid; border-width: 4px; border-color: #01529e">
                <h3 style="height: 35px; font-family: Helvetica; color: #01529e; margin-top: 10px">
                  <center>
                    <b>CATEGORÍAS</b>
                  </center>
                </h3>
              </div>
                
                <%!   ArrayList<DtCategoria> c = ModelArticulo.getInstance().listarCategorias();   %>
                
              <!-- FILA A TENER POR CADA CATEGORIA -->
              <%    for(int x=0; x < c.size(); x++){    %>
                        <div class="row" style="height: 35px">
                            <button style="height: 32px; width: 100%; font-family: Helvetica; font-size: 18px" class="btn btn-primary" onclick="CATEGORIA('<%= c.get(x).getNombre() %>')"><%= c.get(x).getNombre() %></button>
                        </div>
              <%    }    %>
              <!-- FIN FILA A TENER POR CADA CATEGORIA -->
            </div>
          </div>
          <!-- FIN TREEVIEW && INICIO LA OTRA SHIT -->
          <!-- SECCION CON SCROLL DE SERVICIOS -->
          <div id="listaQNoEsLista" class="col-md-9" style="height: 550px; max-height: 550px; overflow-y: auto; background-color: #E6E6E6">
            <!-- COMIENZO FILA A TENER POR CADA SERVICIO -->
            
            <% ArrayList<DtServicio> s = ModelArticulo.getInstance().listarServicios(); %>
            
            <%   for(int x = 0; x < s.size(); x++){   %>
            
                <center>
                  <div id="<%="fila"+(x+1)%>" class="row" style="height: 250px; margin-top: 20px; background-color: #f9f9f9; max-height: 250px; width: 100%; border-color: #01529e; border-width: 9px; border-bottom-style: solid">
                    <div class="row" style="height: 50px; background-color: white; width: 100%; border-top-style: solid; border-color: #01529e">
                      <div class="col-md-9">
                          <h2 id="<%= "titulo"+(x+1) %>" style="margin-top: 9px; font-family: Helvetica; color: #01529e; font-size: 27px; width: 100%; text-align: left"><%= s.get(x).getNombre().trim() + ", " + s.get(x).getNickProveedor().trim() %></h2>
                      </div>
                      <div class="col-md-3">
                        <div class="col-md-2">
                          <h2 style="margin-top: 6px; font-family: Helvetica; color: #359151; margin-left: 0px; font-size: 30px">
                            <b>$</b>
                          </h2>
                        </div>
                        <div class="col-md-10">
                            <h2 id="<%= "precio"+(x+1) %>" style="margin-top: 9px; font-family: Helvetica; color: #359151; margin-left: -10px; text-align: left; font-size: 25px"><%= s.get(x).getPrecio().toString().trim() %></h2>
                        </div>
                      </div>
                      <div class="row" style="height: 160px; width: 100%; margin-left: 0px; margin-top: 60px">
                        <div class="col-md-8" style="height: 175px; min-height: 175px; margin-left: 0px">
                            <div class="row" style="font-family: Helvetica; color: #121212; height: 140px; min-height: 140px; text-align: left; max-height: 140px; margin-left: 20px">
                                <% if(s.get(x).getDescripcion() != null && !s.get(x).getDescripcion().isEmpty()){ %>
                                    <h3 style="margin-top: 0px; font-family: Helvetica; color: #121212; height: 140px; min-height: 140px; text-align: left; max-height: 140px; overflow-y: auto; margin-left: 20px; font-size: 22px"><%= s.get(x).getDescripcion() %></h3>
                                <% } %>
                            </div>
                            <div class="row" style="font-family: Helvetica; color: #121212; height: 35px; min-height: 35px; text-align: left; max-height: 35px; overflow-x: auto; margin-left: 18px">
                                <%  String t="";
                                    for(int i = 0; i < s.get(x).getCategorias().size(); i++){ 
                                        t = t + s.get(x).getCategorias().get(i).trim();
                                        if(i != s.get(x).getCategorias().size()-1)
                                            t = t + ", ";
                                    }
                                %>
                                <h3 id="<%= "categoriaID"+(x+1) %>" style="margin-top: 0px; font-family: Helvetica; color: #121212; height: 25px; min-height: 25px; text-align: left; max-height: 20px; overflow-x: auto; margin-left: 20px; font-size: 19px"><%= t %></h3>
                            </div>
                        </div>
                        <div class="col-md-4" style="height: 160px">
                          <div class="col-md-6">
                            <button class="btn btn-info" data-toggle="modal" data-target="#<%="serv"+(x+1)%>" style="height: 35px; font-family: Helvetica; font-size: 20px; margin-top: 130px; margin-left: -20px">Consultar</button>
                          </div>
                          <div class="col-md-2">
                            <input value="1" type="number" min="1" class="form-control" id="<%="cant"+(x+1)%>" name="cant" style="margin-top: 130px; margin-left: -90px; width: 60px;"/>
                          </div>
                          <div class="col-md-4">
                            <button class="btn btn-primary" style="height: 35px; font-family: Helvetica; font-size: 20px; margin-top: 130px; margin-left: -60px" onclick="AGREGARALCARRO('<%= x+1 %>')">Agregar al carrito</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </center>
                <!-- COMIENZO DEL MODAL DE INFORMACION DEL SERVICIO -->
                <div id="<%= "serv"+(x+1) %>" class="modal fade" role="dialog">
                  <div class="modal-dialog" style="width: 70%">
                    <div class="modal-content">
                      <div class="modal-header" style="background-color: #4A4C4E; min-height: 50px; max-height: 50px">
                        <button type="button" class="close" data-dismiss="modal" style="color: white">×</button>
                        <h3 class="modal-title" style="font-family: Helvetica; color: #8e969f; margin-top: -5px">
                          <center><%= s.get(x).getNombre().trim() %></center>
                        </h3>
                      </div>
                      <div class="modal-body" style="height: 70%; max-height: 650px; min-height: 650px; overflow-y: auto; background-color: #E6E6E6">
                        <div class="row" style="height: 50%; margin-top: -15px">
                          <div class="row" style="margin-left: 0; width: 100%; background-color: #D0D0D0; height: 40px; max-height: 40px; min-height: 40px">
                            <h3 style="margin-top: 6px; font-family: Helvetica; color: #4A494E; margin-left: 10px">Imagenes</h3>
                          </div>
                          <!-- CARRUSEL CON IMAGENES DEL SERVICIO -->
                          <div class="row" style="margin-left: 0; width: 100%; height: 270px; max-height: 270px; min-height: 270px">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                              <div id="imgs" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                  <li data-target="#imgs" data-slide-to="0" class="active"></li>
                                  <li data-target="#imgs" data-slide-to="1"></li>
                                  <li data-target="#imgs" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner" role="listbox">
                                  <div class="item active">
                                    <img src="R4IMYQNVRI.jpg" style="min-height: 270px; max-height: 270px; max-width: 470px; min-width: 470px">
                                  </div>
                                  <div class="item">
                                    <img src="YH1RSSLXJC.jpg" style="min-height: 270px; max-height: 270px; max-width: 470px; min-width: 470px">
                                  </div>
                                  <div class="item">
                                    <img src="left.svg" style="min-height: 270px; max-height: 270px; max-width: 470px; min-width: 470px">
                                  </div>
                                </div>
                                <a class="left carousel-control" href="#imgs" role="button" data-slide="prev">
                                  <span aria-hidden="true" style="font-family: Helvetica; font-style: italic; font-size: 26px">&lt;</span>
                                </a>
                                <a class="right carousel-control" href="#imgs" role="button" data-slide="next">
                                  <span aria-hidden="true" style="font-family: Helvetica; font-style: italic; font-size: 26px">&gt;</span>
                                </a>
                              </div>
                            </div>
                            <div class="col-md-3"></div>
                          </div>
                        </div>
                        <!-- FIN DEL CARRUSEL DE IMAGENES && COMIENZO SECCION INFORMACION-->
                        <div class="row" style="height: 52%">
                          <div class="row" style="margin-left: 0; width: 100%; background-color: #D0D0D0; height: 40px; max-height: 40px; min-height: 40px">
                            <h3 style="margin-top: 6px; font-family: Helvetica; color: #4A494E; margin-left: 10px">Información</h3>
                          </div>
                          <!-- SECCION CON DESCRIPCION -->
                          <div class="row" style="margin-left: 0; width: 100%; height: 300px; max-height: 300px; min-height: 300px">
                            <div class="col-md-4">
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid">
                                <center>PROVEEDOR:</center>
                              </h4>
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid">
                                <center>NOMBRE:</center>
                              </h4>
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid">
                                <center>PRECIO:</center>
                              </h4>
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid">
                                <center>CIUDAD ORIGEN:</center>
                              </h4>
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid">
                                <center>CIUDAD DESTINO:</center>
                              </h4>
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid">
                                <center>DESCRIPCION:</center>
                              </h4>
                            </div>
                            <!-- FIN SECCION DESCRIPTIVA && COMIENZO INFORMACION A CARGAR -->
                            <div class="col-md-8">
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid; border-color: #80878F"><%= s.get(x).getNickProveedor().trim() %></h4>
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid; border-color: #80878F"><%= s.get(x).getNombre().trim() %></h4>
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid; border-color: #80878F"><%= s.get(x).getPrecio().toString().trim() %></h4>
                              <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid; border-color: #80878F"><%= s.get(x).getCiudadOrigen().trim() %></h4>
                              <% if(s.get(x).getCiudadDestino() != null && !s.get(x).getCiudadDestino().isEmpty()){ %>
                                <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid; border-color: #80878F"><%= s.get(x).getCiudadDestino().trim() %></h4>
                            <% }else{ %>
                                <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid; border-color: #80878F">(A confirmar...)</h4>
                            <% } %>
                            <% if(s.get(x).getDescripcion() != null && !s.get(x).getDescripcion().isEmpty()){ %>
                                <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid; border-color: #80878F"><%= s.get(x).getDescripcion().trim() %></h4>
                            <% }else{ %>
                                <h4 style="font-family: Helvetica; color: #4A4C4E; border-bottom-style: solid; border-color: #80878F">(...)</h4>
                            <% } %>
                            
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="modal-footer" style="background-color: #8e969f">
                        <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: #4A4C4E; color: white; border: none; font-family: Helvetica">ACEPTAR</button>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- FIN DE LA FILA A TENER POR CADA SERVICIO -->
                
            <%  }    %>
                
          </div>
        </div>
      </div>
    </div>

<!---->
  </div>
<!---->
<!--FOOTER-->
<!---->
 <jsp:include page="templates/footer.jsp"/>
 
 <script type="text/javascript">
        function CATEGORIA(nomCat) {
            //alert(nomCat);
            //$('#listaQNoEsLista').html('');
            //document.getElementById('fila1').style.display="none";
            for (var i = 0; i < <%= s.size()%>; i++) {
                var bool = false;
                //alert(document.getElementById('categoriaID1').innerHTML);
                //alert('categoriaID' + (i+1));
                var Cats = document.getElementById('categoriaID' + (i+1)).innerHTML;
                //alert(Cats);
                var arrayCat = Cats.split(', ');
                for (var j = 0; j < arrayCat.length ; j++) {
                    if (arrayCat[j] === nomCat){
                        bool = true;
                    }
                }
                if (bool === false){
                   document.getElementById('fila' + (i+1)).style.display="none"; 
                }else{
                   document.getElementById('fila' + (i+1)).style.display="block"; 
                }
            }          
        }                
</script>

<script type="text/javascript">
        function AGREGARALCARRO(num) {
            var nickNOM = document.getElementById('titulo' + num).innerHTML; 
            nickNOM = nickNOM.split(', ');
            var nick = nickNOM[1];
            var nom = nickNOM[0];
            var preServ = document.getElementById('precio' + num).innerHTML;
            var cantServ = document.getElementById('cant' + num).value;
            $.post("AgregarAlCarrito", "nomServ="+ nom +"&nickServ=" + nick + "&preServ=" + preServ + "&cant=" + cantServ, function(state) {
               alert(state);
            });
        }
                
</script>

  </body></html>
