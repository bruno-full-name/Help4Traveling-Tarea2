package Modelo;

import help4travelling.DtPromocion;
import help4travelling.Factory;
import help4travelling.IControladorArticulo;
import help4travelling.ManejadorSQL;
import java.util.ArrayList;

public class ModelArticulo {
    private static IControladorArticulo ICArticulo = Factory.GetInstance().getIControladorArticulo();
    private static ModelArticulo instancia;
    
    public static ModelArticulo getInstance(){
        if (instancia==null){
            instancia = new ModelArticulo();
            ManejadorSQL.GetInstance().init("192.168.10.132");
        }
        return instancia;
    }
    
    public ArrayList<DtPromocion> listarPromociones(){
        return ICArticulo.listarPromociones();
    }
    
     public DtPromocion datosPromocion(String nombreProm, String nameProv){
        return ICArticulo.datosPromociones(nombreProm, nameProv);
    }
    
}
    
    
   


