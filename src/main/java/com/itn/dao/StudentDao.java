/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.model.Student;
import java.util.List;



public interface StudentDao {
public void insert(Student s);
public List<Student> display();
public Student selectById(int id);
public void update(Student s);
public void delete(int id);

}
