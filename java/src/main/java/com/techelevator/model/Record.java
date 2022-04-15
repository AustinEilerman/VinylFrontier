package com.techelevator.model;

import java.util.Date;
import java.util.List;

public class Record {

    private int userId;
    private int recordId;
    private String title;
    private String artist;
    private String genre;
    private int length;
    private String userNotes;
    private int userRating;
    private String coverArtUrl;

    public Record() {
    }

    public Record( int userId, String title, String artist, String genre) {
        this.userId = userId;
        this.title = title;
        this.artist = artist;
        this.genre = genre;
    }

    public Record( int userId, String title, String artist, String genre, int length, String userNotes, int userRating, String coverArtUrl) {
        this.userId = userId;
        this.title = title;
        this.artist = artist;
        this.genre = genre;
        this.length = length;
        this.userNotes = userNotes;
        this.userRating = userRating;
        this.coverArtUrl = coverArtUrl;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRecordId() {
        return recordId;
    }

    public void setRecordId(int recordId) {
        this.recordId = recordId;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public String getUserNotes() {
        return userNotes;
    }

    public void setUserNotes(String userNotes) {
        this.userNotes = userNotes;
    }

    public int getUserRating() {
        return userRating;
    }

    public void setUserRating(int userRating) {
        this.userRating = userRating;
    }

    public String getCoverArtUrl() {return coverArtUrl;}

    public void setCoverArtUrl(String coverArtUrl) {this.coverArtUrl = coverArtUrl;}
}

