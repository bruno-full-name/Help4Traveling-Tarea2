<%-- 
    Document   : consultarReservas
    Created on : 06-oct-2016, 15:50:23
    Author     : Antares
--%>

<%@page import="Modelo.ModelArticulo"%>
<%@page import="help4travelling.DtReserva"%>
<%@page import="help4travelling.DtInfoReserva"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/consultarReservas.css" rel="stylesheet" type="text/css">
        <link href="css/algo.css" rel="stylesheet" type="text/css">
        <title>Ver mis reservas</title> 
    </head>
    <body>       
        <jsp:include page="templates/headerC.jsp"/>
        <% Integer[] arr = (Integer[]) request.getAttribute("arrayReservas"); 
            DtReserva dtRes = (DtReserva) request.getAttribute("InfoRes");
        %>
<div class="divPrincipal">
    <center><h1>Ver Informacion de Reserva</h1></center>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <center>
                    <div class="btn-group btn-group-lg">

                        <form action="ControllerInfoReserva" method="post">
                            <select class="btn btn-primary dropdown-toggle" name="resID">
                                <%   for (int i = 0; i < arr.length; i++) {
                                        String option = arr[i].toString();
                                %>
                                <option value="<%= option%>"><%= option%></option>
                                <% }%>
                            </select>
                            <input class="btn-primary" type="submit" value="selectId">
                            <!-- Pasamano negro --><input type="hidden" name="cli" value="<%= request.getAttribute("namecli") %>">
                        </form>
                    </div>
                </center>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nombre Servicio</th>
                                <th>Precio</th>
                                <th>Tipo</th>
                                <th>Nick Proveedor</th>
                                <th>Cantidad</th>
                            </tr>
                        </thead>
                        <tbody>

                            <% ArrayList<DtInfoReserva> lir = (ArrayList<DtInfoReserva>) request.getAttribute("SerDRes"); %>
                        
                            <% for (int i = 0; i < lir.size(); i++) {%>
                            <% //setea el tipo de servicio para mostrar en la columna tipo
                                String servicio;
                                if(ModelArticulo.getInstance().EsServicio(lir.get(i).GetNombreArticulo())){  
                                servicio = "Servicio";
                            }else{
                                servicio = "Promocion";
                            }
                            %>
                            
                            <tr>                    
                                <td><%= lir.get(i).GetNombreArticulo()%></td>
                                <td><%= lir.get(i).getPrecioArticulo()%></td>
                                <td><%= servicio %></td>
                                <td><%= lir.get(i).getNickProveedor()%></td>                    
                                <td><%= lir.get(i).GetCantidad()%></td>
                                <% }%>
                            </tr>
                        </tbody>
                    </table>
                </div>
                            
                    <div class="form-group">
                        <div class="col-sm-4">
                            <label class="label-info" >Estado: <%= dtRes.GetEstado() %></label>
                        </div>
                        <div class="col-sm-4">
                            <label class="label-info" >Precio Total: <%= dtRes.getPrecio() %></label>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>
    <jsp:include page="templates/footer.jsp"/>
</body>
</html>
