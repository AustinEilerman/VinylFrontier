package com.techelevator.controller;

import com.techelevator.dao.RecordDao;
import com.techelevator.model.Record;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
public class RecordController {

    private RecordDao recordDao;

    public RecordController(RecordDao recordDao) {
        this.recordDao = recordDao;
    }

    @RequestMapping(value = "/records/{id}", method = RequestMethod.GET)
    public Record getRecord(@PathVariable int id) {
        return recordDao.getRecord(id);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "/records", method = RequestMethod.POST)
    public Record createRecord(@RequestBody Record newRecord) {
        return recordDao.createRecord(newRecord);
    }

    @GetMapping(value = "/records")
    public Record[] getAllRecords() {
      Record[] records = recordDao.findAll().toArray(new Record[0]);
      return records;
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "/collections/{id}", method = RequestMethod.PUT)
    public void addRecordToCollection(@RequestBody Record newRecord) {

    }

}
