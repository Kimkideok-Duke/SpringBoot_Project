package com.example.demo.board.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import com.example.demo.board.domain.NoticeFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.board.domain.Notice;
import com.example.demo.board.mapper.boardMapper;

@Service
public class boardService {
    @Autowired(required = false)
    boardMapper mapper;

    // 공지 목록 조회
    public List<Notice> showNoticeList(){
        return mapper.showNoticeList();
    }

    // 공지 상세
    public Notice showNoticeDetail(int notice_no){
        return mapper.showNoticeDetail(notice_no);
    }

    // 공지 작성
    @Value("${spring.servlet.multipart.location}")
    private String path;
    public void insertNotice(Notice ins) {
        MultipartFile mpf = ins.getAddFile();
        String fname = mpf.getOriginalFilename();

        File f = new File(path+fname);
        try {
            mpf.transferTo(f);
            System.out.println("파일업로드 완료!");
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        mapper.insertNotice(ins);
        mapper.insertFile(new NoticeFile(path,fname));
    }

    // 공지 수정

    public void updateNotice(Notice upt){
        MultipartFile mpf = upt.getAddFile();
        String fname = mpf.getOriginalFilename();

        File f = new File(path+fname);
        System.out.println(fname);
        try {
            mpf.transferTo(f);
            System.out.println("파일업로드 완료!");
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        mapper.updateNotice(upt);
        mapper.insertFile(new NoticeFile(path,fname));
    }

    // 공지 삭제
    public void deleteNotice(int notice_no){
        mapper.deleteNotice(notice_no);
    }


}
