package Modelo;

import help4travelling.IControladorUsuario;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {
    
    private static IControladorUsuario ICUsuario;
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            HttpSession objSesion = request.getSession();
            String nickname = request.getParameter("nickname");
            String password = request.getParameter("password");
            EstadoSesion nuevoEstado;
            RequestDispatcher dispatcher = null;
            try {
                boolean usr = ModelUsuario.getInstance().autenticarCliente(nickname, password);
                if(!usr){
                        nuevoEstado = EstadoSesion.LOGIN_INCORRECTO;
                        dispatcher = request.getRequestDispatcher("/errorVisitante.jsp");
                } else {
                        nuevoEstado = EstadoSesion.LOGIN_CORRECTO;
                        request.getSession().setAttribute("usuario_logueado", nickname);
                        dispatcher = request.getRequestDispatcher("/index.jsp");
                }
            } catch(Exception ex){
                    nuevoEstado = EstadoSesion.LOGIN_INCORRECTO;
            }
            objSesion.setAttribute("estado_sesion", nuevoEstado);
            dispatcher.forward(request, response);
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
