package com.hotelmanager.service;

import com.hotelmanager.model.User;
import com.hotelmanager.repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserDao userDao;

    @Autowired
    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }

    public boolean addUser (User user) {
        return userDao.addUser(user);
    }

    public User getUser (String email) {
        return userDao.getUser(email);
    }

    public boolean deleteUser (User user) {
        return userDao.deleteUser(user);
    }

    public boolean updateUser (User user) {
        return userDao.updateUser(user);
    }

    public Long checkUser (User user) {
        return userDao.checkUser(user);
    }
}
