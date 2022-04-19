package com.techelevator.dao;

import com.techelevator.model.Record;

import java.util.List;

public interface RecordDao {
    Record getRecord(int recordId);

    Record createRecord(Record newRecord);

    void deleteRecord(int recordId);

    List<Record> findAll(int userId);

    List<Record> getAllRecordsByCollectionId(int collectionId);

    void updateRecordNotes(String updatedRecord, int recordId);
}
