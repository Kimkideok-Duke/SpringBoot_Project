package com.example.demo.board.domain;

import lombok.Data;

@Data
public class NoticeFile {
    private int file_no;
    private String path;
    private String fname;

    public NoticeFile(String path, String fname) {
        this.path=path;
        this.fname=fname;
    }
}
