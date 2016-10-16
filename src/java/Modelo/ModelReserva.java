package Modelo;

import help4travelling.DtFecha;
import help4travelling.DtInfoReserva;
import help4travelling.Factory;
import help4travelling.IControladorReserva;
import help4travelling.DtReserva;
import help4travelling.Estado;
import java.util.ArrayList;
import help4travelling.ManejadorSQL;
import java.util.List;

public class ModelReserva {
    private static IControladorReserva ICReserva = Factory.GetInstance().getIControladorReserva();
    private static ModelReserva instancia;
    
    public static ModelReserva getInstance(){
        if (instancia==null){
            instancia = new ModelReserva();
            ManejadorSQL.GetInstance().init("192.168.10.132");
        }
        return instancia;
    }
    
    public ArrayList<Integer> listarReservas(String nickname){
        return ICReserva.listarReservasXcli(nickname);
    }
    
    public DtReserva devolverReserva(int id){
        return ICReserva.datosReservas(id);
    }
    
    public void agregarReserva(int id, Estado estado, DtFecha date, ArrayList<DtInfoReserva> infoReserva ,String nickCli, float precio){
        ICReserva.CrearReserva(new DtReserva(id, estado, date, infoReserva ,nickCli, precio));
    }
    
    public Integer[] ObtenerReservas(String cli){
        List<Integer> res = ICReserva.listarReservasXcli(cli);             
        Integer[] Iret = res.toArray(new Integer[res.size()]);
        return Iret;
    }
    
    public ArrayList<DtInfoReserva> ObtenerDatosReserva(int idRes){
        return ICReserva.ObtenerInfoArticulosReservados(idRes);
    }
    //DtReserva reserva = new DtReserva(Estado.Registrada,fechaActual,infodeReserva,"eWatson",90);      
    public boolean agregarRes(Estado E, DtFecha fecha, ArrayList<DtInfoReserva> DtInf,String nick,float F){
        return ICReserva.CrearReserva(new DtReserva(E, fecha, DtInf, nick, F));
    }
    
    public boolean cancelarReserva(int id){
        return ICReserva.actualizarEstado(Estado.Cancelada, id);
    }
}
