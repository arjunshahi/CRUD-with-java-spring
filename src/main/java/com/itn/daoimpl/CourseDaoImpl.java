/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.daoimpl;
import com.itn.dao.CourseDao;
import com.itn.model.Course;
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
public class CourseDaoImpl implements CourseDao {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public void insert(Course c) {
Session session = sessionFactory.openSession();
session.beginTransaction();
session.save(c);
session.getTransaction().commit();
session.close();
//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Course> selectAll() {
Session session=sessionFactory.openSession();
session.beginTransaction();


CriteriaBuilder cb = session.getCriteriaBuilder();
CriteriaQuery<Course> cq = cb.createQuery(Course.class);
Root<Course> root = cq.from(Course.class);
cq.select(root);
Query<Course> query = session.createQuery(cq);
List<Course> al = query.getResultList();

session.close();
return al;
//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Course selectById(int id) {
Session session = sessionFactory.openSession();
session.beginTransaction();
Course c= session.get(Course.class,id);
session.getTransaction();
session.close();
return c;


//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Course c) {
        Session session = sessionFactory.openSession();
session.beginTransaction();
session.update(c);
session.getTransaction().commit();
session.close();
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
        Session session = sessionFactory.openSession();
session.beginTransaction();
Course c= session.get(Course.class, id);
session.delete(c);
session.getTransaction().commit();
session.close();
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
