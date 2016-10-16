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
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession objSesion = request.getSession();
            String nickname = request.getParameter("idNick");
            String password = request.getParameter("idPass");


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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
