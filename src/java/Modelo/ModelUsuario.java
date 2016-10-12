package Modelo;

import help4travelling.DtFecha;
import help4travelling.Factory;
import help4travelling.DtCliente;
import help4travelling.IControladorUsuario;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;
import help4travelling.ManejadorSQL;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

public class ModelUsuario {
    private static IControladorUsuario ICUsuario = Factory.GetInstance().getIControladorUsuario();
    private static ModelUsuario instancia;
    
    public static ModelUsuario getInstance(){
        if (instancia==null){
            instancia = new ModelUsuario();
            ManejadorSQL.GetInstance().init("localhost");
        }
        return instancia;
    }
    
     public void agregarCliente(String nick, String nombre, String apellido, String email, DtFecha fechaN, Blob[] avatar, ArrayList<Integer> r){
        DtCliente dc = new DtCliente(nick, nombre, apellido, email, fechaN, avatar, r);
        this.ICUsuario.AltaCliente(dc);
    }
    
    public DtCliente verPerfil(String nickname){
        return ICUsuario.datosCliente(nickname);
    }
    
    public boolean autenticarCliente(String nick, String email){
        return ICUsuario.VerificarUsuario(email, email);
    }
    
    public List<String> listarProveedores(){
        return ICUsuario.listarProveedores();
    } 
    
    public void agregarCliente(DtCliente dtcli){
        ICUsuario.AltaCliente(dtcli);
    }
    
    public boolean VerificarNickCliente(String nick){
        return ICUsuario.chequearNick(nick);
    }
    
    public boolean VerificarEmailCliente(String email){
        return ICUsuario.chequearEmail(email);
    }
    
    public void agregarImagenCliente(InputStream f, String NickC) throws FileNotFoundException, SQLException, IOException{
        ManejadorSQL.GetInstance().insertImgUsuariov2(f, NickC);
    }
}
