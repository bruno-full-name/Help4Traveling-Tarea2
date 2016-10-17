/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.ModelReserva;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import javax.servlet.http.HttpSession;
import help4travelling.DtInfoReserva;
import help4travelling.DtFecha;
import help4travelling.Estado;



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
            HttpSession session=request.getSession();
            ArrayList<DtInfoReserva> infodeReserva = (ArrayList<DtInfoReserva>) session.getAttribute("ListaInfoRes");
            session.setAttribute("ListaInfoRes", null);
            int precio=0;
            //System.out.println(infodeReserva.size());
            for(int i=0; i< infodeReserva.size(); i++)
            {
               precio+=infodeReserva.get(i).getPrecioArticulo() * infodeReserva.get(i).GetCantidad();
            }
            
            String nickname = request.getSession().getAttribute("usuario_logueado").toString();
             
            
            ModelReserva modRes = ModelReserva.getInstance();
            modRes.agregarRes(Estado.Registrada, fechaActual, infodeReserva, nickname, precio);
            request.getRequestDispatcher("inicioCliente.jsp").forward(request, response);
            
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
