package com.example.demo.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public void insertNotice(Notice ins){
        mapper.insertNotice(ins);
    }

    // 공지 수정
    public void updateNotice(Notice upt){
        mapper.updateNotice(upt);
    }

    // 공지 삭제
    public void deleteNotice(int notice_no){
        mapper.deleteNotice(notice_no);
    }
}
