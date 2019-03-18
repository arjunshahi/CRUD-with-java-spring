/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.model.Course;
import java.util.List;
public interface CourseDao {
    public void insert(Course c);
    public List<Course> selectAll();
    public Course selectById(int id);
    public void update(Course c);
    public void delete(int id);
}
