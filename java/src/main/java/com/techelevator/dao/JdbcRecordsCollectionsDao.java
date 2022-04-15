package com.techelevator.dao;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
@Service
public class JdbcRecordsCollectionsDao implements RecordsCollectionsDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcRecordsCollectionsDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void addRecordToCollection(int recordId, int collectionId) {
        final String sql = "INSERT INTO records_collections(record_id, collection_id) " +
                " VALUES(?, ?);";
        this.jdbcTemplate.update(sql, recordId, collectionId);
    }
}
