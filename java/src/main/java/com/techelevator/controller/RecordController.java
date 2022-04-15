package com.techelevator.controller;

import com.techelevator.dao.RecordDao;
import com.techelevator.dao.RecordsCollectionsDao;
import com.techelevator.model.Record;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
public class RecordController {

    private RecordDao recordDao;
    private RecordsCollectionsDao recordsCollectionsDao;

    public RecordController(RecordDao recordDao, RecordsCollectionsDao recordsCollectionsDao) {
        this.recordDao = recordDao;
        this.recordsCollectionsDao = recordsCollectionsDao;
    }

    @RequestMapping(value = "/records/{id}", method = RequestMethod.GET)
    public Record getRecord(@PathVariable int id) {
        return recordDao.getRecord(id);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "/records/library/{user_id}", method = RequestMethod.POST)
    public Record createRecord(@RequestBody Record newRecord) {
        return recordDao.createRecord(newRecord);
    }

    @GetMapping(value = "/records/library/{userId}")
    public Record[] getAllRecords(@PathVariable int userId) {
      Record[] records = recordDao.findAll(userId).toArray(new Record[0]);
      return records;
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "/collections/{collectionId}", method = RequestMethod.POST)
    public void addRecordToCollection(@RequestBody Record record, @PathVariable int collectionId) {
        recordsCollectionsDao.addRecordToCollection(record.getRecordId(), collectionId);
    }

}
