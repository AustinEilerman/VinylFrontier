package com.techelevator.controller;

import com.techelevator.dao.CollectionDao;
import com.techelevator.dao.JdbcRecordDao;
import com.techelevator.dao.RecordDao;
import com.techelevator.model.Collection;
import com.techelevator.model.Record;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class CollectionController {

    private CollectionDao collectionDao;
    private RecordDao recordDao;


    public CollectionController(CollectionDao collectionDao, RecordDao recordDao) {
        this.collectionDao = collectionDao;
        this.recordDao = recordDao;
    }

    @RequestMapping(value = "/collection/{id}", method = RequestMethod.GET)
    public Collection get(@PathVariable int id) {
        return collectionDao.getCollection(id);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "/collections", method = RequestMethod.POST)
    public Collection createCollection(@RequestBody Collection newCollection) {
        return collectionDao.createCollection(newCollection);
    }

    @RequestMapping(value = "/collections", method = RequestMethod.GET)
    public List<Collection> getAllCollectionsByUserId(@RequestParam (required = false) Integer userId) {
        if (userId == null) {
            return collectionDao.getAllCollections();
        }
        else {
            return collectionDao.getCollectionsByUserId(userId);
        }
    }
// was this an attempt to view records in a collection?
    @RequestMapping(value = "/collection-{id}/records", method = RequestMethod.GET)
    public List<Record> getRecordsForCollection(@PathVariable int collectionId) {
        return recordDao.getAllRecordsByCollectionId(collectionId);
    }

}
