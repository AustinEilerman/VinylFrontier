package com.techelevator.dao;

import com.techelevator.model.Record;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class JdbcRecordDao implements RecordDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcRecordDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Record getRecord(int recordId) {
        final String sql = "SELECT * " +
                            "FROM records " +
                            "WHERE record_id = ?";
        SqlRowSet results = this.jdbcTemplate.queryForRowSet(sql, recordId);
        Record record = null;
        if (results.next()) {
            record = mapRowToRecord(results);
        }
        return record;
    }

    @Override
    public Record createRecord(Record newRecord) {
        final String sql = "INSERT INTO records " +
                "(record_user_id, record_title, record_artist, record_genre, record_length_in_sec," +
                "record_user_description, record_user_rating) " +
                            "VALUES (?, ?, ?, ?, ?, ?, ?) " +
                            "RETURNING record_id;";

        Integer idAssigned = jdbcTemplate.queryForObject(sql, Integer.class,
                newRecord.getUserId(),
                newRecord.getTitle(),
                newRecord.getArtist(),
                newRecord.getGenre(),
                newRecord.getLength(),
                newRecord.getUserNotes(),
                newRecord.getUserRating()
        );
        return this.getRecord(idAssigned);
    }

    @Override
    public List<Record> findAll(int userId) {
        List<Record> records = new ArrayList<>();
        String sql = "SELECT * FROM records WHERE record_user_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        while (results.next()) {
            Record record = mapRowToRecord(results);
            records.add(record);
        }
        return records;
    }

    @Override
    public List<Record> getAllRecordsByCollectionId(int collectionId) {
        List<Record> records = new ArrayList<>();
        String sql = "SELECT * " +
                "FROM records " +
                "JOIN records_collections ON records.record_id = records_collections.record_id " +
                "JOIN collections ON collections.collection_id = records_collections.collection_id " +
                "WHERE collections.collection_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, collectionId);
        while (results.next()) {
            Record record = mapRowToRecord(results);
            records.add(record);
        }
        return records;
    }

    @Override
    public void addRecordToCollection(int recordId, int collectionId) {
        final String sql = "INSERT INTO records_collections (record_id, collection_id) " +
                "VALUES (?, ?);";
        this.jdbcTemplate.update(sql, recordId, collectionId);
    }

    private Record mapRowToRecord(SqlRowSet rowSet) {
        Record record = new Record();

        record.setRecordId(rowSet.getInt("record_id"));
        record.setUserId(rowSet.getInt("record_user_id"));
        record.setTitle(rowSet.getString("record_title"));
        record.setArtist(rowSet.getString("record_artist"));
        record.setLength(rowSet.getInt("record_length_in_sec"));
        record.setUserNotes(rowSet.getString("record_user_description"));
        record.setUserRating(rowSet.getInt("record_user_rating"));
        record.setGenre(rowSet.getString("record_genre"));

        return record;
    }

}