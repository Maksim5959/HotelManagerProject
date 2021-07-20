package com.hotelmanager.model;


import lombok.*;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class User {

    private Long id;

    private  String email;

    private String login;

    private String password;

    private String firstName;

    private String lastName;

}
