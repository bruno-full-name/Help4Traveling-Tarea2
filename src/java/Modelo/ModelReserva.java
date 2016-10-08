package Modelo;

import help4travelling.DtFecha;
import help4travelling.DtInfoReserva;
import help4travelling.Factory;
import help4travelling.IControladorReserva;
import help4travelling.DtReserva;
import help4travelling.Estado;
import java.util.ArrayList;
public class ModelReserva {
    private IControladorReserva ICReserva;
    
    public ModelReserva(){
        this.ICReserva = Factory.GetInstance().getIControladorReserva();
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
    
}
