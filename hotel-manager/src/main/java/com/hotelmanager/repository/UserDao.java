package com.hotelmanager.repository;

import com.hotelmanager.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class UserDao {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public UserDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public boolean addUser (User user) {
        Long id = checkUser(user);
            if (id == null) {
                return jdbcTemplate.update("INSERT INTO users (email, login, password, first_name,last_name,roles_id) " +
                        "VALUES (?,?,?,?,?,?)", user.getEmail(), user.getLogin(),user.getPassword(),user.getFirstName(),user.getLastName(),1) > 0;
            }
            return false;
    }

    public User getUser (String email) {
       User user = new User();
        try {
            user = jdbcTemplate.queryForObject("SELECT first_name, last_name, email, password, role_id FROM users where users.email = ?  ",
                    new BeanPropertyRowMapper<>(User.class), email);
        } catch (Exception ignore){
            return null;
        }
        return user;
    }

    public boolean deleteUser (User user) {
        return jdbcTemplate.update("DELETE from users where email = ? and password = ?", user.getEmail(), user.getPassword()) > 0;
    }

    public boolean updateUser (User user) {
        Long id = checkUser(user);
        if (id == user.getId() || id == null){
            return jdbcTemplate.update("UPDATE users SET email = ?, login= ?, password= ?, first_name= ?,last_name= ?" +
                            " where users.id = ? "
                    ,user.getEmail(), user.getLogin(), user.getPassword(), user.getFirstName(), user.getLastName(), user.getId()) > 0;
        } else {
            return false;
        }
    }

    public Long checkUser (User user) {
        Long id = null;
        try {
            id = jdbcTemplate.queryForObject("SELECT id FROM users where users.email = ?",
                    Long.class, user.getEmail());
        }catch (Exception ignored){
        } try {
            id = jdbcTemplate.queryForObject("SELECT id FROM users where users.login = ? ",
                    Long.class, user.getLogin());
        } catch (Exception ignored) {
        }
        return id;
    }
}
