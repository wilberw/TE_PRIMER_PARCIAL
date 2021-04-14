/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.modelo;

import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author Wilber-Zruc
 */
public class GestorVacunas {

    private ArrayList<Vacunas> lista;
    
    public GestorVacunas()
    {
        lista = new ArrayList<Vacunas>();
    }
    public ArrayList<Vacunas> getLista(){
        return lista;
    }
    public void setLista(ArrayList<Vacunas> lista){
        this.lista = lista;
    }
    public void insertarVacunas(Vacunas item)
    {
        lista.add(item);
    }
    public void modificarVacunas(int pos, Vacunas item)
    {
        lista.set(pos, item);
    }
    public void eliminarVacunas(int pos)
    {
        lista.remove(pos);
    }
    public int obtieneId()
    {
        int idaux = 0;
        
        for(Vacunas item : lista){
            idaux = item.getId();
        }
        return idaux +1;
    }
    public int ubicarVacunas(int id)
    {
        int pos = -1;
        Iterator<Vacunas> it = lista.iterator();
        
        while (it.hasNext()){
            ++pos;
            Vacunas aux = it.next();
            
            if(aux.getId() == id){
                break;
            }
        }
        return pos;
    }
}