package com.example.demo.member.domain;

import java.util.Date;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class User {
	private String id;
    private String passwd;
    private String name;
    private String nickname;
    private String email;
    private Date create_date;
    private String auth;
}
