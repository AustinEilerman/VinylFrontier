package com.techelevator.model;

public class Record {

    private String title;
    private String artist;
    private int genreId;

    public Record(String title, String artist, int genreId) {
        this.title = title;
        this.artist = artist;
        this.genreId = genreId;
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

    public int getGenreId() {
        return genreId;
    }

    public void setGenreId(int genreId) {
        this.genreId = genreId;
    }

}

