<%@page import="Modelo.ModelArticulo"%>
<%@page import="help4travelling.DtReserva"%>
<%@page import="help4travelling.DtInfoReserva"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="tree/src/js/bootstrap-treeview.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/consultarReservas.css" rel="stylesheet" type="text/css">
    <link href="css/algo.css" rel="stylesheet" type="text/css">
  </head><body>
    <jsp:include page="templates/headerC.jsp"/>
        <%  Integer[] arr = (Integer[]) request.getAttribute("arrayReservas");
            String nameCli = (String) request.getAttribute("namecli");
            /*System.out.println(nameCli);
            System.out.println(arr[0]);*/
        %>
        <div class="divPrincipal">
    <div class="section">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12" style="border-bottom-style: solid; border-color: rgb(1, 82, 158); border-width: 9px">
            <h1 class="text-center" style="color: #313131; font-family: Helvetica; ">RESERVAS</h1>
          </div>
        </div>
        <div class="row" style="background-color: #01529e; min-height: 70px; max-height: 70px">
          <div class="row" style="background-color: #01529e; min-height: 70px; max-height: 70px">
              <div class="col-md-4" style="background-color: #01529e; min-height: 70px; max-height: 70px">
                <div class="col-md-6">
                  <h3 style="font-family: Helvetica; color: white; margin-top: 0px">
                    <b>Estado actual:</b>
                  </h3>
                  <h3 style="font-family: Helvetica; color: white; margin-top: 0px">
                    <b>Total:</b>
                  </h3>
                </div>
                <div class="col-md-6">
                  <h3 id="estadoAct" style="font-family: Helvetica; color: white; margin-left: -40px; margin-top: 0px"></h3>
                  <h3 id="precioTot" style="font-family: Helvetica; color: white; margin-left: -40px; margin-top: 0px"></h3>
                </div>
              </div>
              <div class="col-md-4" style="background-color: #01529e; min-height: 70px; max-height: 70px">
                <div class="col-md-12"></div>
              </div>
              <div class="col-md-4" style="background-color: #01529e; min-height: 70px; max-height: 70px">
                <div class="col-md-6"></div>
                <div class="col-md-6">
                  <button id="cancel" class="btn btn-primary" style="height: 35px; font-family: Helvetica; font-size: 20px; margin-top: 15px; margin-left: 20px" onclick="cancelar()">Cancelar reserva</button>
                </div>
              </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3" style="background-color: white; min-height: 550px; max-height: 550px; overflow-y: auto">
            <div class="col-md-12">
              <div class="row" style="margin-top: 20px; border-top-style: solid; border-width: 4px; border-color: #01529e">
                <center>
                  <h3 style="height: 35px; font-family: Helvetica; color: #01529e; margin-top: 10px" contenteditable="true">
                    <b>SELECCIONAR RESERVA</b>
                </h3>
                </center>
              </div>
              <!-- FILA A TENER POR CADA RESERVA -->
               <%    for(int x=0; x < arr.length; x++){    %>
                        <div class="row" style="height: 35px">
                <button style="height: 32px; width: 100%; font-family: Helvetica; font-size: 18" class="btn btn-primary" onclick="CONSULTAR('<%= arr[x] %>','<%= nameCli%>')"><%= arr[x]%></button>
              </div>
              <%    }    %>
              <!-- FIN FILA A TENER POR CADA RESERVA -->
            </div>
          </div>
          <!-- SECCION CON SCROLL DE ARTICULOS -->
          <div class="container-fluid">
          <div class="row">
            <div class="col-md-9" style="height: 550px; max-height: 550px; overflow-y: auto; background-color: white">
              <table id="tablaLoca" class="table">
                <thead style="background-color: #E6E6E6; color: #01529e;  border-bottom-style: solid; border-width: 4px; border-color: #01529e">
                  <tr style="height: 40px">
                    <th style="width: 30%; font-family: Helvetica; font-size: 18px">nombre articulo</th>
                    <th style="width: 30%; font-family: Helvetica; font-size: 18px">nick prov</th>
                    <th style="width: 20%; font-family: Helvetica; font-size: 18px">precio</th>
                    <th style="width: 20%; font-family: Helvetica; font-size: 18px">cantidad</th>
                  </tr>
                </thead>
                <tbody id="tbodyLoco">

                </tbody>
              </table>
            </div>
          </div>
         </div>
        </div>
      </div>
    </div>
    </div>

    <jsp:include page="templates/footer.jsp"/>


<script type="text/javascript">
        function CONSULTAR(id, name) {
            //alert("holaaaaaaaaaa");
            //alert(id + " " + name);
            document.getElementById("cancel").value=id;
            $.get("ControllerInfoReserva", "cli="+ name +"&resID=" + id + "&num=1", function(responseJson) {
                //alert(responseJson);
                document.getElementById("tbody")
                $("#tbody").children().remove();
                var tblBody  = document.getElementById("tbody");
                
                $("#tbodyLoco").children().remove();
                var tblBody  = document.getElementById("tbodyLoco"); 
                $.each(responseJson, function(index, product) {
                    //alert(index);
                    var row = document.createElement("tr");

                    var cell = document.createElement("td");
                    var cellText = document.createTextNode(product.nameArticulo);
                    cell.appendChild(cellText);
                    row.appendChild(cell);

                    var cell = document.createElement("td");
                    var cellText = document.createTextNode(product.nickProveedor);
                    cell.appendChild(cellText);
                    row.appendChild(cell);
                    
                    var cell = document.createElement("td");
                    var cellText = document.createTextNode(product.precioArticulo);
                    cell.appendChild(cellText);
                    row.appendChild(cell);
                    
                    var cell = document.createElement("td");
                    var cellText = document.createTextNode(product.cantidad);
                    cell.appendChild(cellText);
                    row.appendChild(cell);

                    tblBody.appendChild(row);
                });
            });
            $.get("ControllerInfoReserva", "cli="+ name +"&resID=" + id + "&num=2" , function(responseJson) {
                document.getElementById("estadoAct").innerHTML = responseJson.estado;
                document.getElementById("precioTot").innerHTML = responseJson.precio;
            });
        }

</script>
<script>
        function cancelar(){
            if (document.getElementById("estadoAct").innerHTML === "Registrada"){
                if(document.getElementById("cancel").value != ""){
                 $.get("ControlCancelarReserva", "id="+ document.getElementById("cancel").value , function(resonse) {
                     document.getElementById("estadoAct").innerHTML = "Cancelada";
                     alert("Reserva Cancelada");
                 }); 
                }   
            }
                      
        }
</script>


</body></html>

