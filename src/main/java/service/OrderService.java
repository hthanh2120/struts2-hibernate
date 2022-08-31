package service;

import config.HibernateConfig;
import model.Order;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.*;

public class OrderService {

    /*
    Get all order
     */
    public List<Order> getAll() {
        List<Order> orderList = new ArrayList<Order>();
        return orderList;
    }

    /*
    Save one order into db
     */
    public Order save(Order order) {
        Session session = HibernateConfig.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        try{
            session.save(order);
            session.getTransaction().commit();
        }catch (HibernateException e){
            e.printStackTrace();
            session.getTransaction().rollback();
        }finally {
            session.close();
        }

        return order;
    }

    /*
    Update one order
     */
    public void update(String id, Order order) {
    }

    /*
    Delete one order
     */
    public void remove(String id) {
    }
}

