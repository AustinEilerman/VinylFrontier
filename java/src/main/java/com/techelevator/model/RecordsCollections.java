package com.techelevator.model;

public class RecordsCollections {
    private int collectionId;
    private int recordId;

    public RecordsCollections(int collectionId, int recordId) {
        this.collectionId = collectionId;
        this.recordId = recordId;
    }

    public RecordsCollections() {}

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
