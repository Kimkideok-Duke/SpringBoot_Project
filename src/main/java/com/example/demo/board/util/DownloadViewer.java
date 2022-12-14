package com.example.demo.board.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

public class DownloadViewer extends AbstractView {
    @Value("${spring.servlet.multipart.location}")
    private String fpath;

    @Override
    protected void renderMergedOutputModel(Map<String, Object> model,
                                           HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String fname = (String)model.get("downloadFileName");
        File file = new File(fpath+fname);

        response.setContentType("applicatiion/download;charset=utf-8");
        response.setContentLength((int)file.length());
        fname = URLEncoder.encode(fname,"utf-8").replaceAll("\\+", " ");
        response.setHeader("Content-Disposition", "attachment;filename=\""+fname+"\"");
        response.setHeader("Content-Transfer-Encoding", "binary");

        FileInputStream fis = new FileInputStream(file);
        OutputStream out = response.getOutputStream();
        FileCopyUtils.copy(fis, out);
        out.flush();
    }
}
