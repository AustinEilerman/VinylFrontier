package com.techelevator.controller;

import com.techelevator.dao.CollectionDao;
import com.techelevator.model.Collection;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class CollectionController {

    private CollectionDao collectionDao;

    public CollectionController(CollectionDao collectionDao) {
        this.collectionDao = collectionDao;
    }

    @RequestMapping(value = "/collections/{id}", method = RequestMethod.GET)
    public Collection get(@PathVariable int id) {
        return collectionDao.getCollection(id);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "/collections", method = RequestMethod.POST)
    public Collection createCollection(@RequestBody Collection newCollection) {
        return collectionDao.createCollection(newCollection);
    }

    @RequestMapping(value = "/collections", method = RequestMethod.GET)
    public List<Collection> getAllCollections() {
        return collectionDao.getAllCollections();
    }
    
}
