/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernatefinal.services;

import com.hibernatefinal.model.Person;
import java.util.List;

/**
 *
 * @author ZedGe
 */
public interface PersonService {
    public void agregarPersona(Person person);
    public List<Person> mostrarPersonas();
    public void eliminarPersona(Integer id);
    public void actualizarPersona(Person person);
    public Person mostrarPersona(int id);
}
