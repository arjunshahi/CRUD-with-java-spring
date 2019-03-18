
package com.itn.daoimpl;

import com.itn.dao.UserDao;
import com.itn.model.User;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao{
   @Autowired
   SessionFactory sessionFactory;

    @Override
    public void insert(User u) {
       try (Session session = sessionFactory.openSession()) {
           session.beginTransaction();
           session.save(u);
           session.getTransaction().commit();
           // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
       }
    }

    @Override
    public List<User> display() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery cq = cb.createQuery(User.class);
        Root<User> root=cq.from(User.class);
        cq.select(root);
        Query<User> query = session.createQuery(cq);
        List<User> list = query.getResultList();
        session.close();
        return list;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
       try (Session session = sessionFactory.openSession()) {
           session.beginTransaction();
           User u = session.get(User.class, id);
           session.delete(u);
           session.getTransaction().commit();
           //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
       }
    }

    @Override
    public User edit(int id) {
        User u;
       try (Session session = sessionFactory.openSession()) {
           session.beginTransaction();
           u = session.get(User.class,id);
           session.getTransaction();
       }
return u;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   
}
