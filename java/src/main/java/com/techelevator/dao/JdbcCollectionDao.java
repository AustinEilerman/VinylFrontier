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
        final String sql = " SELECT collection_user_id, is_public, collection_name" +
                " FROM collections" +
                " WHERE collection_id = ?;";
        SqlRowSet results = this.jdbcTemplate.queryForRowSet(sql, collectionId);
        Collection collection = null;
        if (results.next()) {
            collection = mapRowToCollection(results);
        }
        return collection;
    }

    @Override
    public Collection createCollection(Collection newCollection) {
        final String sql = " INSERT INTO collections (collection_user_id, is_public, collection_name)" +
                " VALUES (?,?,?)" +
                " RETURNING collection_id;";
        Integer idAssigned = jdbcTemplate.queryForObject(sql, Integer.class,
                newCollection.getCollectionUserId(),
                newCollection.isPublic(),
                newCollection.getCollectionName()
        );
        return this.getCollection(idAssigned);
    }

    private Collection mapRowToCollection(SqlRowSet rowSet) {
        Collection collection = new Collection();

        collection.setCollectionId(rowSet.getInt("collection_id"));
        collection.setCollectionUserId(rowSet.getInt("collection_user_id"));
        collection.setPublic(rowSet.getBoolean("is_public"));
        collection.setCollectionName(rowSet.getString("collection_name"));

        return collection;
    }

}
