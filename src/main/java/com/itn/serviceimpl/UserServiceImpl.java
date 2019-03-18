
package com.itn.serviceimpl;

import com.itn.dao.UserDao;
import com.itn.model.User;
import com.itn.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
@Autowired
UserDao userDao;
    @Override
    public void addUser(User u) {
        userDao.insert(u);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<User> displayUser() {
        return userDao.display();
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteUser(int id) {
        userDao.delete(id);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User editUser(int id) {
        return userDao.edit(id);
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
