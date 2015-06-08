/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hibernatefinal.dao;

import com.hibernatefinal.model.Person;
import com.hibernatefinal.util.HibernateUtil;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ZedGe
 */
public class PersonDAOImpl implements PersonDAO{

    @Override
    public void add(Person person) {
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
            session.save(person);
        tx.commit();
        session.close();
    }

    @Override
    public List<Person> getPersons() {
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
            List<Person> listaPersonas = null;
            listaPersonas = session.createQuery("from Person").list(); 
        tx.commit();
        session.close();

        return listaPersonas;
    }

    @Override
    public void delete(Integer id) {
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
            Person person = (Person) session.get(Person.class, id); 
            session.delete(person); 
        tx.commit();
        session.close();
    }

    @Override
    public void update(Person person) {
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
            session.update(person);
        tx.commit();
        session.close();
    }

    @Override
    public Person get(Integer id) {
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
            Person person = new Person();
            person = (Person) session.get(Person.class, id);  
        tx.commit();
        session.close();

        return person;
    }
    
}
