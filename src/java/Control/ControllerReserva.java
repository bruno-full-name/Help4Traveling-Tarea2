/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import javax.servlet.http.HttpSession;
import help4travelling.DtInfoReserva;
import help4travelling.DtReserva;
import help4travelling.DtFecha;
import help4travelling.Estado;
import help4travelling.Factory;
import help4travelling.IControladorReserva;
import static java.lang.System.out;


public class ControllerReserva extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Calendar fecha = new GregorianCalendar();
            int anio = fecha.get(Calendar.YEAR);
            int mes = fecha.get(Calendar.MONTH);
            int dia = fecha.get(Calendar.DAY_OF_MONTH);
            DtFecha fechaActual = new DtFecha (anio, mes, dia);
            /* TODO output your page here. You may use following sample code. */
            // llama la funcion del modelo
            //le pasa los datos de sesion
            //HttpSession sesion=request.getSession();
            //ÀrrayList<DtInfoReservas> infodeReserva = (DtInforeserva) sesion.getParameter(carrito);
            ArrayList<DtInfoReserva> infodeReserva = new ArrayList();
            DtInfoReserva dtinfo = new DtInfoReserva("Euro-Vuelo-S", 1, "mHooch", fechaActual, fechaActual, 100);
            infodeReserva.add(dtinfo);
            
            //Obtenemos el valor del año, mes, día,
            //hora, minuto y segundo del sistema
            //usando el método get y el parámetro correspondiente
            
            /*int precio;
            for(int i=0; i< infodeReserva;i++)
            {
               precio+=infodeReserva[i].getPrecioArticulo() * infodeReserva.GetCantidad;
            
            }*/

            DtReserva reserva = new DtReserva(Estado.Registrada,fechaActual,infodeReserva,"eWatson",90);
            IControladorReserva controladorReserva = Factory.GetInstance().getIControladorReserva();
            controladorReserva.CrearReserva(reserva);
            out.println("HOLA?");
        } finally {
            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
