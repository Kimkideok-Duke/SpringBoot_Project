package com.example.demo.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.member.domain.User;
import com.example.demo.member.service.memberService;
import com.google.gson.Gson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class memberController {
    @Autowired(required = false)
    memberService service;

    // http://localhost:7080/loginPage
    @RequestMapping("/loginPage")
    public String loginPage() {
        return "login";
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request, User in, Model d){
        HttpSession session = request.getSession();
        int loginFlag = 1;
        loginFlag = service.isUser(in);
        if(loginFlag == 0){
            d.addAttribute("isUser", "N");
        } else{
            session.setAttribute("loginId", in.getId());
            d.addAttribute("isUser", "Y");

        }
        return "login";
    }

    // http://localhost:7080/signupPage
    @RequestMapping("/signupPage")
    public String signupPage(){
        return "signup";
    }

    @ResponseBody
    @RequestMapping("/idCheck")
    public String idCheck(@RequestParam("id") String id, Model d){
        Gson gson = new Gson();
        int idCheckFlag = 0;
        idCheckFlag = service.idCheck(id);
        String json="";
        json = gson.toJson(idCheckFlag);
        return json;
    }

    @RequestMapping("/signup")
    public String signup(User up, Model d){
        service.signup(up);
        d.addAttribute("isSignUp", "Y");
        return "signup";
    }
}