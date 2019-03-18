/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.serviceimpl;

import com.itn.dao.CourseDao;
import com.itn.model.Course;
import com.itn.service.CourseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class CourseServiceImpl implements CourseService{
@Autowired
CourseDao courseDao;
    @Override
    public void addCourse(Course c) {
        courseDao.insert(c);
        //call coursedao to presist c object into database
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Course> getAllCourse() {
       
return courseDao.selectAll();
// throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Course getCourseById(int id) {
        
return courseDao.selectById(id);
//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateCourse(Course c) {
courseDao.update(c);
//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteCourse(int id) {
      courseDao.delete(id);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
