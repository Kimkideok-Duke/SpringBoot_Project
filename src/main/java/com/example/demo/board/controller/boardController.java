package com.example.demo.board.controller;

import com.example.demo.board.domain.Notice;
import com.example.demo.board.domain.NoticeFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.board.service.boardService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class boardController {
    @Autowired(required = false)
    boardService service;
    
    // http://localhost:7080/noticePage
    @RequestMapping("/noticePage")
    public String noticePage(HttpServletRequest request, Model d){
        HttpSession session = request.getSession();
        String loginId = "";
        if(session!=null&&session.getAttribute("loginId")!=null) {
            loginId=(String)session.getAttribute("loginId");
            d.addAttribute("loginId", loginId);
        }
        d.addAttribute("nolist", service.showNoticeList());
        return "notice";
    }

    @RequestMapping("/noticeDetailPage")
    public String noticeDetailPage(@RequestParam("notice_no") int notice_no, Model d){
        d.addAttribute("no_detail", service.showNoticeDetail(notice_no));
        return "noticeDetail";
    }

    @RequestMapping("/noticeEditPage")
    public String noticeEditPage(@RequestParam("notice_no") int notice_no, Model d){
        d.addAttribute("no_detail", service.showNoticeDetail(notice_no));
        return "noticeEdit";
    }

    @RequestMapping("/noticeNewPage")
    public String noticeNewPage(){
        return "noticeNew";
    }

    @RequestMapping("/insertNotice")
    public String insertNotice(Notice ins, Model d){
        service.insertNotice(ins);
        d.addAttribute("proc", "upt");
        return "noticeNew";
    }

    @RequestMapping("/updateNotice")
    public String updateNotice(Notice upt, Model d){
        if(upt == null) {
            System.out.println("NULL");
        }else {
            service.updateNotice(upt);
        }
        System.out.println("너 타는거임?>");
        d.addAttribute("proc", "upt");
        return "noticeEdit";
    }

    @RequestMapping("/deleteNotice")
    public String deleteNotice(@RequestParam("notice_no") int notice_no, Model d){
        service.deleteNotice(notice_no);
        d.addAttribute("proc", "del");
        return "noticeEdit";
    }

    @RequestMapping("/download")
    public String download(@RequestParam("fname") String fname, Model d){
        d.addAttribute("downloadFileName", fname);
        return "downloadViewer";
    }
}
