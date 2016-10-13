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
            ManejadorSQL.GetInstance().init("localhost");
        }
        return instancia;
    }
    
    public ArrayList<DtPromocion> listarPromociones(){
        return ICArticulo.listarPromociones();
    }
    
     public DtPromocion datosPromocion(String nombreProm, String nameProv){
        return ICArticulo.datosPromociones(nombreProm, nameProv);
    }
    
    public boolean EsServicio(String nombreServicio){
        //Toma por sentado que el nombre es de un servicio, recorre todos las promociones del sistema, si el nombre es igual a una de ellas devuelve false
        ArrayList<DtPromocion> lart = ICArticulo.listarPromociones();
        boolean ret = true;
        for(DtPromocion x : lart){
            if(x.GetNombre().equalsIgnoreCase(nombreServicio)) ret = false;
        }
        return ret;
    }    
}
    
    
   


