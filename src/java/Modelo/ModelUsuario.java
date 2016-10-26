package Modelo;

import help4travelling.Factory;
import help4travelling.DtCliente;
import help4travelling.DtProveedor;
import help4travelling.IControladorUsuario;
import java.util.ArrayList;
import java.util.List;
import help4travelling.ManejadorSQL;
import java.io.InputStream;

public class ModelUsuario {
    private static IControladorUsuario ICUsuario = Factory.GetInstance().getIControladorUsuario();
    private static ModelUsuario instancia;
    
    public static ModelUsuario getInstance(){
        if (instancia==null){
            instancia = new ModelUsuario();
            ManejadorSQL.GetInstance().init("192.168.10.132");
        }
        return instancia;
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
    
    public void agregarImagenCliente(InputStream f, String NickC){
        try{
            ManejadorSQL.GetInstance().insertImgUsuariov2(f, NickC);
        }catch(Exception e){}
    }
    
    public ArrayList<DtProveedor> listarProveedoresDatos(){
        ArrayList<DtProveedor> ret = new ArrayList<DtProveedor>();
        List<String> provs = ICUsuario.listarProveedores();
        for(int x = 0; x < provs.size(); x++){
            ret.add(ICUsuario.datosProveedor(provs.get(x).trim()));
        }
        return ret;
    }
       
    public byte[] getImagen(String nickP){
        return ManejadorSQL.GetInstance().selectImgUsuario(nickP);
    }
    
    public DtCliente devolverCliente(String nick){
        return ICUsuario.datosCliente(nick);
    }
}
