package com.techelevator.controller;

import com.techelevator.dao.CollectionDao;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@CrossOrigin
public class CollectionController {

    private CollectionDao collectionDao;

    public CollectionController(CollectionDao collectionDao) {
        this.collectionDao = collectionDao;
    }

//    @RequestMapping(value = "/collection/{id}", method = RequestMethod.GET)
//    public Collection get(@PathVariable int id)
}
