package com.techelevator.controller;

import com.techelevator.dao.RecordDao;
import com.techelevator.dao.RecordsCollectionsDao;
import com.techelevator.model.Collection;
import com.techelevator.model.Record;

import org.apache.coyote.Request;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class RecordController {

    private RecordDao recordDao;
    private RecordsCollectionsDao recordsCollectionsDao;

    public RecordController(RecordDao recordDao, RecordsCollectionsDao recordsCollectionsDao) {
        this.recordDao = recordDao;
        this.recordsCollectionsDao = recordsCollectionsDao;
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = "/delete/{recordId}", method = RequestMethod.DELETE)
    public void deleteRecord(@PathVariable int recordId) {
        recordDao.deleteRecord(recordId);
    }

    @RequestMapping(value = "/records/{id}", method = RequestMethod.GET)
    public Record getRecord(@PathVariable int id) {
        return recordDao.getRecord(id);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "/library", method = RequestMethod.POST)
    public Record createRecord(@RequestBody Record newRecord) {
        return recordDao.createRecord(newRecord);
    }

    @GetMapping(value = "/library/{userId}")
    public Record[] getAllRecords(@PathVariable int userId) {
        Record[] records = recordDao.findAll(userId).toArray(new Record[0]);
        return records;
    }

    @RequestMapping(value = "/library/{recordId}", method = RequestMethod.PUT)
    public void updateRecordNote(@PathVariable int recordId, @RequestBody Record record) {
        this.recordDao.updateRecordNotes(record.getUserNotes(), recordId);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "/collections/{collectionId}", method = RequestMethod.POST)
    public void addRecordToCollection(@PathVariable int collectionId, @RequestBody Record record) {
        int recordId = record.getRecordId();
        System.out.println(recordId);
        recordsCollectionsDao.addRecordToCollection(record.getRecordId(), collectionId);
    }

    @RequestMapping(value = "/collections/{collectionId}/records", method = RequestMethod.GET)
    public Record[] getRecordsByCollectionId(@PathVariable int collectionId) {
        Record[] records = recordDao.getAllRecordsByCollectionId(collectionId).toArray(new Record[0]);
        return records;

    }

}
