<%@page import="help4travelling.DtPromocion"%>
<%@page import="Modelo.ModelArticulo"%>
<%@page import="Modelo.ModelUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
    <title>Consultar Promocion</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/consultarPromociones.css" rel="stylesheet" type="text/css">
    <link href="css/algo.css" rel="stylesheet" type="text/css">   
  </head><body>
    <jsp:include page="templates/headerC.jsp"/>
    <!---->
    <!--CUERPO-->
    <div class="divPrincipal">
    <!---->
       <div class="section" style="padding-bottom: 0px">
        <div class="container-fluid">
          <div class="col-md-12">
            <h1 class="text-center" style="color: #313131; font-family: Helvetica">PROMOCIONES</h1>
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
                          
                        <table id="tabla" class="table" style="background-color: #979797; margin-top: -30; margin-left: 7">
                          <thead style="background-color: #545454; color: white; font-family: Helvetica; font-size: 14">
                            <tr>
                              <th style="width: 300">NICKNAME PROV.</th>
                              <th style="width: 300">NOMBRE</th>
                            </tr>
                          </thead>
                          <tbody style="color: white; font-family: Helvetica; font-size: 13">
                                 <%! ArrayList<DtPromocion> prom = ModelArticulo.getInstance().listarPromociones(); %>
                
                                <% for(int i=0; i<prom.size(); i++){ %>
                                <tr> 
                                    <td><%= prom.get(i).getNickProv() %></td>
                                    <td><%= prom.get(i).GetNombre() %></td>
                                    <% } %>
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
                
              </center>
              <hr style="color: black; background-color: black">
              <div class="col-md-6">
                <h4 style="font-family: Helvetica; font-size: 16">Nombre:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Proveedor:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Descuento:</h4>
                <h4 style="font-family: Helvetica; font-size: 16">Precio Total:</h4>
                <h4 style="font-family: Helvetica; font-size: 16; margin-top: 40px">Cantidad:</h4>
              </div>
                    <div class="col-md-6">
                    <input type="text" class="form-control" id="nickProm" name="nomProm" readonly/>
                    <input type="text" class="form-control" id="nomProm" name="nickProm" readonly/>
                    <input type="text" class="form-control" id="descProm" name="descProm" readonly/>
                    <input type="text" class="form-control" id="preProm" name="preProm" readonly/>
                    <input value="1" type="number" min="1" class="form-control" id="cant" name="cant" style="margin-top: 20px"/>
                    <button type="button" class="btn button col-md-12" style="margin-top: 10px" name="prom" id="prom" value="prom" onclick="AGREGARALCARRO()">Agregar al Carrito</button>
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
                        <table id="tablaServ" class="table" style="background-color: #979797; margin-top: -30; margin-left: 7">
                          <thead style="background-color: #545454; color: white; font-family: Helvetica; font-size: 14">
                            <tr>
                              <th style="width: 300">NOMBRE PROVEEDOR</th>
                              <th style="width: 300">NOMBRE SERVICIO</th>
                            </tr>
                          </thead>
                          <tbody id="tbody" style="color: white; font-family: Helvetica; font-size: 13">
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
    </div>
    <!--FOOTER-->
    <!---->
    <jsp:include page="templates/footer.jsp"/>

<script type="text/javascript">
    $("#tabla tr").click(function(){
        $(this).addClass('selected').siblings().removeClass('selected');    
        var value = $(this).find('td:first').html();
        var value2 = $(this).find("td").eq(1).html();
        if (value !== undefined){
            document.getElementById('nickProm').value = value;
            document.getElementById('nomProm').value = value2;
            
            $.get("DevolverPromocion", "nomProm="+ value2 +"&nickProm=" + value, function(responseText) {
                document.getElementById('descProm').value = responseText;
            });
            $.get("DevolverPromocion", "nomProm="+ value2 +"&nickProm=" + value +"&descProm=" + document.getElementById('descProm').value, function(responseText) {
                document.getElementById('preProm').value = responseText;
            });
            $.get("DevolverPromocion", "nomProm="+ value2 +"&nickProm=" + value +"&descProm=" + document.getElementById('descProm').value +"&preProm=" + document.getElementById('preProm').value, function(responseJson) {
                $("#tbody").children().remove();
                var tblBody  = document.getElementById("tbody");                          // Find all child elements with tag name "option" and remove them (just to prevent duplicate options when button is pressed again).
                $.each(responseJson, function(index, item) { // Iterate over the JSON array.
                   var row = document.createElement("tr");

                    var cell = document.createElement("td");
                    var cellText = document.createTextNode(document.getElementById('nickProm').value);
                    cell.appendChild(cellText);
                    row.appendChild(cell);

                    var cell = document.createElement("td");
                    var cellText = document.createTextNode(item);
                    cell.appendChild(cellText);
                    row.appendChild(cell);

                    tblBody.appendChild(row);      // Create HTML <li> element, set its text content with currently iterated item and append it to the <ul>.
                });
            });
               
        }
         
    });

 /*$('.ok').on('click', function(e){
     alert($("#tabla tr.selected td:first").html());
 });*/
</script>

<script type="text/javascript">
        function AGREGARALCARRO() {
           var nick = document.getElementById('nickProm').value;
           var nom = document.getElementById('nomProm').value;
           if (nick != "" && nom != ""){
                //alert("nickProm="+ nick +"&nomProm=" + nom +"&preProm=" + document.getElementById('preProm').value +"&cant=" + document.getElementById('cant').value);
                $.get("AgregarAlCarrito", "nickProm="+ nick +"&nomProm=" + nom +"&preProm=" + document.getElementById('preProm').value +"&cant=" + document.getElementById('cant').value, function(responseText) {
                    alert("Promocion agregada correctamente");
                    document.getElementById('nickProm').value = "";
                    document.getElementById('nomProm').value = "";
                    document.getElementById('descProm').value = "";
                    document.getElementById('preProm').value = "";
                    document.getElementById('cant').value = "1";
                    $("#tbody").children().remove();
                });
           }
        }
                
</script>

</body></html>
