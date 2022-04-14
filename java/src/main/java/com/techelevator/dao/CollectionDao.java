package com.techelevator.dao;

import com.techelevator.model.Collection;

import java.util.List;

public interface CollectionDao {
    Collection getCollection(int collectionId);

    List<Collection> getAllCollections();

    Collection createCollection(Collection newCollection);
    
}
