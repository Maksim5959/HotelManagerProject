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
        Long id = null;
        id = jdbcTemplate.queryForObject("SELECT id FROM users where users.login = ? and users.email = ?  ",
                Long.class, user.getLogin(), user.getEmail());
        if (id != null){
            return false;
        }
        return jdbcTemplate.update("INSERT INTO users (email, login, password, first_name,last_name,roles_id) " +
                "VALUES (?,?,?,?,?,?)", user.getEmail(), user.getLogin(),user.getPassword(),user.getFirstName(),user.getLastName(),1) > 0;
    }

    public User getUser (String email, String password) {
        return jdbcTemplate.queryForObject("SELECT first_name, last_name, email FROM users where users.email = ? and users.password = ?   ",
                new BeanPropertyRowMapper<>(User.class), email, password);
    }

    public boolean deleteUser (User user) {
        return jdbcTemplate.update("DELETE from users where email = ? and password = ?", user.getEmail(), user.getPassword()) > 0;
    }

    public Long getId (String email, String password) {
        Long id = jdbcTemplate.queryForObject("SELECT id FROM users where users.email = ? and users.password = ?  ",
                Long.class, email, password);
        if (id != null){
            return id;
        } else {
            return null;
        }

    }

    public boolean updateUser (User user) {
        Long id = null;
        id = jdbcTemplate.queryForObject("SELECT id FROM users where users.login = ? and users.email = ?  ",
                Long.class, user.getLogin(), user.getEmail());
        if (id != null){
            return false;
        }
        return jdbcTemplate.update("UPDATE users SET (email, login, password, first_name,last_name,roles_id) " +
                "VALUES (?,?,?,?,?,?)", user.getEmail(), user.getLogin(),user.getPassword(),user.getFirstName(),user.getLastName(),1) > 0;
    }
}
