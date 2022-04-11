package com.techelevator.model;

import java.util.List;

public class Collection {
    private List<Record> userCollection;
    private String collectionName;
    private int collectionId;


    public Collection(List<Record> userCollection, String collectionName) {
        this.userCollection = userCollection;
        this.collectionName = collectionName;
    }

    public List<Record> getUserCollection() {
        return userCollection;
    }

    public void setUserCollection(List<Record> userCollection) {
        this.userCollection = userCollection;
    }

    public String getCollectionName() {
        return collectionName;
    }

    public void setCollectionName(String collectionName) {
        this.collectionName = collectionName;
    }
    public int getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }

}
