package Modelo;

import help4travelling.DtCategoria;
import help4travelling.DtPromocion;
import help4travelling.DtServicio;
import help4travelling.Factory;
import help4travelling.IControladorArticulo;
import help4travelling.IControladorCategoria;
import help4travelling.ManejadorSQL;
import java.util.ArrayList;
import java.util.List;

public class ModelArticulo {
    private static IControladorArticulo ICArticulo = Factory.GetInstance().getIControladorArticulo();
    private static IControladorCategoria ICCategoria = Factory.GetInstance().getIControladorCategoria();
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
    
    public boolean EsServicio(String nombreServicio){
        //Toma por sentado que el nombre es de un servicio, recorre todos las promociones del sistema, si el nombre es igual a una de ellas devuelve false
        ArrayList<DtPromocion> lart = ICArticulo.listarPromociones();
        boolean ret = true;
        for(DtPromocion x : lart){
            if(x.GetNombre().equalsIgnoreCase(nombreServicio)) ret = false;
        }
        return ret;
    }
    
    public ArrayList<DtServicio> serviciosXprov(String nickP){
        return ICArticulo.ListarServiciosProv(nickP);
    }
    
    public ArrayList<DtCategoria> listarCategorias(){
        return ICCategoria.listarCategorias();
    }
    
    public ArrayList<DtServicio> listarServicios(){
        return ICArticulo.ListarServicios();
    }
    
    public List<DtServicio> serviciosXcat(String nameCat){
        return (List)ICCategoria.listarServicios(nameCat);
    }
    
    public DtServicio ObtenerDatosServicio(String nameServ, String nameProv){
        return ICArticulo.datosServicio(nameServ, nameProv);
    }
    
}
    
    
   


