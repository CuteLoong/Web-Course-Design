package com.entity;

import java.util.Date;

public class News {
    private int id;
    private String title;
    private Date time;
    private String content;
    private String images;


    public News(String Title, Date Time){
        this.title = Title;
        this.time = Time;
    }
    public News() {}

    public News setContent(String content) {
        this.content = content;
        return this;
    }

    public News setImages(String images) {
        this.images = images;
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

    public String getImages() {
        return images;
    }

    public int getId() {
        return id;
    }


}
