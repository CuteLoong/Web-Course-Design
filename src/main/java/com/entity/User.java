package com.entity;

public class User {
    String name;
    String passWord;

    public User(String name, String passWord)
    {
        this.name = name;
        this.passWord = passWord;
    }

    public String getName() {
        return name;
    }

    public String getPassWord() {
        return passWord;
    }

    public User setName(String name) {
        this.name = name;
        return this;
    }

    public User setPassWord(String passWord) {
        this.passWord = passWord;
        return this;
    }
}
