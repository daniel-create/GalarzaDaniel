/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.Estudiante;
import java.util.List;

/**
 *
 * @author TuNombre
 */
public interface CRUDCARRERA {
    public List listarcarrera(); // listar
    public Carrera buscarCarrera(int idCarrera); // buscar
    public boolean agregarCarrera(Carrera carrera); // agregar
    public boolean editarCarrera(Carrera carrera); // editar
    public boolean eliminarCarrera(int idCarrera); // eliminar
}
