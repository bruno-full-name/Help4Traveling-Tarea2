package Modelo;

import help4travelling.Factory;
import help4travelling.IControladorCategoria;
import help4travelling.ManejadorSQL;
import java.util.ArrayList;

public class ModelCategoria {
    private static IControladorCategoria ICCategoria = Factory.GetInstance().getIControladorCategoria();
    private static ModelCategoria instancia;
    
    public static ModelCategoria getInstance(){
        if (instancia==null){
            instancia = new ModelCategoria();
            ManejadorSQL.GetInstance().init("192.168.10.132");
        }
        return instancia;
    }
    
}
