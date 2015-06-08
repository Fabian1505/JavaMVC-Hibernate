/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernatefinal.services;

import com.hibernatefinal.dao.PersonDAO;
import com.hibernatefinal.dao.PersonDAOImpl;
import com.hibernatefinal.model.Person;
import java.util.List;

/**
 *
 * @author ZedGe
 */
public class PersonServiceImpl implements PersonService{

    private PersonDAO personDAO = new PersonDAOImpl();
     
    @Override
    public void agregarPersona(Person person) {
        personDAO.add(person);
    }

    @Override
    public List<Person> mostrarPersonas() {
       return personDAO.getPersons();
    }

    @Override
    public void eliminarPersona(Integer id) {
        personDAO.delete(id);
    }

    @Override
    public void actualizarPersona(Person person) {
         personDAO.update(person);
    }

    @Override
    public Person mostrarPersona(int id) {
        return personDAO.get(id);
    }
    
}
