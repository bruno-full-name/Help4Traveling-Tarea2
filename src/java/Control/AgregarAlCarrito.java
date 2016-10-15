/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import help4travelling.DtInfoReserva;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bruno
 */
@WebServlet(name = "AgregarAlCarrito", urlPatterns = {"/AgregarAlCarrito"})
public class AgregarAlCarrito extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
  
        if (request.getParameter("nickProm2") != null ){
            String nick = request.getParameter("nickProm");
            String nom = request.getParameter("nomProm");
            String precio = request.getParameter("preProm");
            float precio2 = Float.valueOf(precio);
            String cant = request.getParameter("cant");
            int cant2 = Integer.valueOf(cant);
            DtInfoReserva carrito = new DtInfoReserva(null, null, cant2, nom, nick, precio2);
            
            HttpSession session = request.getSession();
            ArrayList<DtInfoReserva> listInfoRes = (ArrayList<DtInfoReserva>) session.getAttribute("ListaInfoRes");
            if (listInfoRes == null){
                ArrayList<DtInfoReserva> carrito2 = new ArrayList<DtInfoReserva>();
                carrito2.add(carrito);
                session.setAttribute("ListaInfoRes", carrito2);
            }else{
                listInfoRes.add(carrito);
                session.setAttribute("ListaInfoRes", listInfoRes);
            }
        }
        try {
            /* TODO output your page here. You may use following sample code. */

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
