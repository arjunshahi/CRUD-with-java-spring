/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.model.Student;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;


public interface StudentService {
  public void addStudent(Student s);
public List<Student> displayStudent();
public Student selectStudentById(int id);
public void updateStudent(Student s);
public void deleteStudent(int id);
public boolean addImage(MultipartFile file);
public boolean updateImage(MultipartFile file, String originalImage);
public boolean deleteImage(String image);

}
