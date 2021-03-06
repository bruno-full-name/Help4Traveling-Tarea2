package Control;

import Modelo.ModelUsuario;
import help4travelling.ManejadorSQL;
import help4travelling.ManejadorSQL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AutenticarCliente", urlPatterns = {"/AutenticarCliente"})
public class AutenticarCliente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String nickU = request.getParameter("nickname");
            String pass = request.getParameter("password");
            if(nickU != null && pass != null){
                boolean ret = ModelUsuario.getInstance().autenticarCliente(nickU, pass);
                if(ret){
                    request.setAttribute("nick", nickU);
                    request.setAttribute("pass", pass);
                    request.getRequestDispatcher("inicioCliente.jsp").forward(request, response);
                }
                else
                    request.getRequestDispatcher("errorVisitante.jsp").forward(request, response);
            }
            else{
                request.getRequestDispatcher("errorVisitante.jsp").forward(request, response);
            }
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
