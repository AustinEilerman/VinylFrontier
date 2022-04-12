package com.techelevator.dao;

import com.techelevator.model.Collection;
import com.techelevator.model.Record;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Service;

@Service
public class JdbcCollectionDao implements CollectionDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcCollectionDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Collection getCollection(int collectionId) {
        final String sql = "";
        SqlRowSet results = this.jdbcTemplate.queryForRowSet(sql, collectionId);
        Collection collection = null;
        if (results.next()) {
            collection = mapRowToCollection(results);
        }
        return collection;
    }

    @Override
    public Collection createCollection(Collection newCollection) {
        final String sql = "";
        Integer idAssigned = jdbcTemplate.queryForObject(sql, Integer.class,
                newCollection.getCollectionName(),
                newCollection.getRecordId()
        );
        return this.getCollection(idAssigned);
    }

    private Collection mapRowToCollection(SqlRowSet rowSet) {
        Collection collection = new Collection();

        collection.setCollectionName(rowSet.getString("collection_name"));
        collection.setCollectionId(rowSet.getInt("collection_id"));
        collection.setRecordId(rowSet.getInt("record_id"));

        return collection;
    }

}
