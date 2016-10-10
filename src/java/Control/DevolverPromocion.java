package Control;

import Modelo.ModelArticulo;
import help4travelling.DtPromocion;
import help4travelling.ManejadorSQL;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DevolverPromocion extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //String promo = request.getParameter("Cancelar");
        try {
            //if (promo ==null){
                DtPromocion p = ModelArticulo.getInstance().datosPromocion(request.getParameter("nomProm"), request.getParameter("nickProm"));
                float descProm = p.GetDescuento();
                float preProm = p.GetPrecio();
                ArrayList<String> servicos = p.GetServicios();
                request.setAttribute("nomProm", request.getParameter("nomProm"));
                request.setAttribute("nickProm", request.getParameter("nickProm"));
                request.setAttribute("descProm", descProm);
                request.setAttribute("preProm", preProm);
                request.setAttribute("servProm", servicos);
                request.getRequestDispatcher("consultarPromCliente.jsp").forward(request, response);
            //}
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
