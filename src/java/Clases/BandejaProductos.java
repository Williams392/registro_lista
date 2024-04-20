/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import Entidades.producto;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author UPN
 */
public class BandejaProductos {
    private List<producto> lista;

    public BandejaProductos() {
        lista = new ArrayList();
    }
    public List<producto> getLista(){
        return lista;
    }
    public void setItem(producto prod){
        lista.add(prod);
    }
            
}
