package com.techelevator.model;

import java.util.List;

public class Collection {
    private int recordId;
    private String collectionName;
    private int collectionId;


    public Collection(int recordId, String collectionName) {
        this.recordId = recordId;
        this.collectionName = collectionName;
    }

    public Collection() {

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

    public int getRecordId() {
        return recordId;
    }

    public void setRecordId(int recordId) {
        this.recordId = recordId;
    }
}
