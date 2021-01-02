package com.entity;

import java.util.Date;

public class News {
    private int id;
    private String title;
    private Date time;
    private String content;
    private String image;
    private String author;



    public News setAuthor(String author) {
        this.author = author;
        return this;
    }

    public News(String Title, Date Time){
        this.title = Title;
        this.time = Time;
    }
    public News() {}

    public News setContent(String content) {
        this.content = content;
        return this;
    }

    public News setImage(String image) {
        this.image = image;
        return this;
    }

    public News setTitle(String title) {
        this.title = title;
        return this;
    }

    public News setTime(Date time) {
        this.time = time;
        return this;
    }

    public News setId(int id) {
        this.id = id;
        return this;
    }

    public String getTitle() {
        return title;
    }

    public Date getTime() {
        return time;
    }

    public String getContent() {
        return content;
    }

    public String getImage() {
        return image;
    }

    public int getId() {
        return id;
    }

    public String getAuthor() {
        return author;
    }

}
