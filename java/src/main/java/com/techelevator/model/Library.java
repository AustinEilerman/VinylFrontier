package com.techelevator.model;

import java.util.List;

public class Library {
    private List<Record> userLibrary;

    public Library(List<Record> userLibrary) {
        this.userLibrary = userLibrary;
    }

    public List<Record> getUserLibrary() {
        return userLibrary;
    }

    public void setUserLibrary(List<Record> userLibrary) {
        this.userLibrary = userLibrary;
    }
}
