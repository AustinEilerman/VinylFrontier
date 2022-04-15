package com.techelevator.dao;

import com.techelevator.model.Collection;

import java.util.List;

public interface CollectionDao {
    Collection getCollection(int collectionId);

    List<Collection> getAllCollections();

    List<Collection> getCollectionsByUserId(int userId);

    Collection createCollection(Collection newCollection);
    
}
