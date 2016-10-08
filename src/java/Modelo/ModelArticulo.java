package Modelo;

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
    
}
