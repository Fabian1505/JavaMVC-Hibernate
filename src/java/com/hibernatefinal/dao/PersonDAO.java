/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernatefinal.dao;

import com.hibernatefinal.model.Person;
import java.util.List;

/**
 *
 * @author ZedGe
 */
public interface PersonDAO {
    public void add(Person person);
    public List<Person> getPersons();
    public void delete(Integer id);
    public void update(Person person);
    public Person get(Integer id);
    
}
