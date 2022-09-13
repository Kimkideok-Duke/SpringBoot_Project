package com.example.demo.board.mapper;

import java.util.List;

import com.example.demo.board.domain.NoticeFile;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.board.domain.Notice;

@Repository
@Mapper
public interface boardMapper {

    // 공지 목록 조회
    public List<Notice> showNoticeList();

    // 공지 상세
    public Notice showNoticeDetail(int notice_no);

    // 공지 작성
    public void insertNotice(Notice ins);

    // 공지 수정
    public void updateNotice(Notice upt);

    // 공지 삭제
    public void deleteNotice(int notice_no);

    // 파일 업로드
    public void insertFile(NoticeFile ins);

}
