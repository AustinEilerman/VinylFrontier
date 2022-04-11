package com.techelevator.dao;

import com.techelevator.model.Collection;

public interface CollectionDao {
    Collection getCollection(int collectionId);

    Collection createCollection(Collection newCollection);
    
}
