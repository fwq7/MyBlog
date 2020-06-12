package com.fwq.blog.entity;

import lombok.Data;

@Data
public class CommentBean {

    private Integer id;

    private Integer articleId;
    private String name;
    private String headImage;

    private Integer userId;

    private Integer operation;

    private String content;
    private String commentTime;



}
