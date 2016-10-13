<%-- 
    Document   : consultarReservas
    Created on : 16/09/2016, 01:41:33 PM
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
    <link href="css/consultarReservas.css" rel="stylesheet" type="text/css">
    <link href="css/algo.css" rel="stylesheet" type="text/css">
    <title>Ver mis reservas</title> 
</head><body>
       <jsp:include page="templates/headerC.jsp"/>
<!---->
<!--CUERPO-->
<!---->
  <div class="divPrincipal">
<!---->

    <center><h1>Ver Informacion de Reserva</h1></center>
    <% Integer[] arr = (Integer[]) request.getAttribute("arrayReservas"); %>

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
                                <!-- Pasamano negro --><input type="hidden" name="cli" value="<%= request.getAttribute("namecli") %>">
                            <input class="btn-primary" type="submit" value="selectId">
                        </form>
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

