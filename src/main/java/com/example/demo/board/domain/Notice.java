package com.example.demo.board.domain;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class Notice {
    public int notice_no;
    public String title;
    public String content;
    public Date create_date;
    public String writer;
    public String file;
    public Date modi_date;
}
