/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.daoimpl;

import com.itn.dao.StudentDao;
import com.itn.model.Student;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository
public class StuDaoImpl implements StudentDao {
@Autowired
SessionFactory sessionFactory;
    @Override
    public void insert(Student s) {
Session session = sessionFactory.openSession();
session.beginTransaction();
session.save(s);
session.getTransaction().commit();
session.close();

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Student> display() {
Session session = sessionFactory.openSession();
session.beginTransaction();
CriteriaBuilder cb =session.getCriteriaBuilder();
CriteriaQuery cq = cb.createQuery(Student.class);
Root<Student> root = cq.from(Student.class);
cq.select(root);
Query<Student> query = session.createQuery(cq);
List<Student> list = query.getResultList();
session.close();
return list;

// throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Student selectById(int id) {
Session session = sessionFactory.openSession();
session.beginTransaction();
Student s= session.get(Student.class,id);
session.getTransaction();
session.close();
return s;

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
 @Override
    public void update(Student s) {
Session session = sessionFactory.openSession();
session.beginTransaction();
session.update(s);
session.getTransaction().commit();
session.close();

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
Session session= sessionFactory.openSession();
session.beginTransaction();
Student s=session.get(Student.class,id);
session.delete(s);
session.getTransaction().commit();
session.close();

//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

  

    
}
