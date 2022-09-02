package com.example.demo.member.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.member.domain.User;

@Repository
@Mapper
public interface memberMapper {
    // 로그인 아이디/비밀번호 확인
    public int isUser(User in);

    // 아이디 중복체크
    public int idCheck(String id);

    // 회원 등록
    public void signup(User up);
}
