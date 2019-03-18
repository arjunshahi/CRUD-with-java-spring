/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.service;

import com.itn.model.User;
import java.util.List;

/**
 *
 * @author Lenovo
 */
public interface UserService {
    public void addUser(User u);
    public List<User> displayUser();
    public void deleteUser(int id);
    public User editUser(int id);
}
