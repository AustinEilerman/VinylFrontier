package com.techelevator.dao;

import com.techelevator.model.Record;

public interface RecordDao {

    Record getRecord(int recordId);

    Record createRecord(Record newRecord);
}
