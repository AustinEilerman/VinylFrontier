package com.techelevator.dao;

import com.techelevator.model.Record;

public interface RecordsCollectionsDao {
    void addRecordToCollection(int recordId, int collectionId);
}
