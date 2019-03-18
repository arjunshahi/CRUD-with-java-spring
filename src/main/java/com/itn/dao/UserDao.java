/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dao;

import com.itn.model.User;
import java.util.List;


public interface UserDao {
    public void insert(User u);
    public List<User> display();
    public void delete(int id);
    public User edit(int id);
    
}
