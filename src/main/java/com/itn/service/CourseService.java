/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;
import com.itn.model.Course;
import java.util.List;

public interface CourseService {
  public void addCourse(Course c);
  public List<Course> getAllCourse();
  public Course getCourseById(int id);
  public void updateCourse(Course c);
  public void deleteCourse(int id);
}
