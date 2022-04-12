package com.techelevator.model;

import java.util.List;

public class Collection {
    private int collectionUserId;
    private boolean isPublic;
    private String collectionName;
    private int collectionId;


    public Collection(int collectionUserId, boolean isPublic, String collectionName, int collectionId) {
        this.collectionUserId = collectionUserId;
        this.isPublic = isPublic;
        this.collectionName = collectionName;
        this.collectionId = collectionId;
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

    public int getCollectionUserId() {
        return collectionUserId;
    }

    public void setCollectionUserId(int collectionUserId) {
        this.collectionUserId = collectionUserId;
    }

    public boolean isPublic() {
        return isPublic;
    }

    public void setPublic(boolean aPublic) {
        isPublic = aPublic;
    }
}
