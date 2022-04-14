package com.techelevator.dao;

import com.techelevator.model.Record;

import java.util.List;

public interface RecordDao {

    Record getRecord(int recordId);

    Record createRecord(Record newRecord);

    List<Record> findAll();

    void addRecordToCollection(int recordId, int collectionId);
}
