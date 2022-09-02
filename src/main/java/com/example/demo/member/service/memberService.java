package com.example.demo.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.member.domain.User;
import com.example.demo.member.mapper.memberMapper;

@Service
public class memberService {
    @Autowired(required = false)
    memberMapper mapper;

    // 로그인 아이디/비밀번호 확인
    public int isUser(User in){
        return mapper.isUser(in);
    }

    // 아이디 중복체크
    public int idCheck(String id){
        return mapper.idCheck(id);
    }

    // 회원 등록
    public void signup(User up){
        mapper.signup(up);
    }
}
