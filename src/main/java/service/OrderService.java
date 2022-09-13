package service;

import config.HibernateConfig;
import model.OrderBill;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.*;

public class OrderService {
    public OrderBill getOrderById(Integer id) {
        OrderBill orderBill = null;
        Session session = HibernateConfig.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        try{
            orderBill = (OrderBill) session.createQuery("from OrderBill where id = "+id).getSingleResult();
            session.getTransaction().commit();
        }catch (HibernateException e){
            e.printStackTrace();
            session.getTransaction().rollback();
        }finally {
            session.close();
        }
        return orderBill;
    }

    /*
    Get all order
     */
    public List<OrderBill> getAll() {
        List<OrderBill> orderBillList = null;
        Session session = HibernateConfig.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        try{
            orderBillList = (List<OrderBill>) session.createQuery("from OrderBill").list();
            session.getTransaction().commit();
        }catch (HibernateException e){
            e.printStackTrace();
            session.getTransaction().rollback();
        }finally {
            session.close();
        }
        return orderBillList;
    }

    /*
    Save one orderBill into db
     */
    public OrderBill save(OrderBill orderBill) {
        Session session = HibernateConfig.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        try{
            session.save(orderBill);
            session.getTransaction().commit();
        }catch (HibernateException e){
            e.printStackTrace();
            session.getTransaction().rollback();
        }finally {
            session.close();
        }

        return orderBill;
    }

    /*
    Update one orderBill
     */
    public void update(OrderBill orderBill) {
        Session session = HibernateConfig.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        try{
            session.update(orderBill);
            session.getTransaction().commit();
        }catch (HibernateException e){
            e.printStackTrace();
            session.getTransaction().rollback();
        }finally {
            session.close();
        }
    }

    /*
    Delete one order
     */
    public void remove(Integer id) {
        Session session = HibernateConfig.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        OrderBill orderBill = null;
        try {
            orderBill = session.load(OrderBill.class, id);
            if (orderBill != null) {
                session.delete(orderBill);
            }
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
    }

    public List<OrderBill> searchOrder(String name) {
        Session session = HibernateConfig.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<OrderBill> lst = new ArrayList<OrderBill>();
        try {
            lst = session.createQuery("from OrderBill where clientName like '%"+name+"%'").getResultList();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return lst;
    }
}

