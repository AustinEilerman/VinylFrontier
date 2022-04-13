package com.techelevator.dao;

import com.techelevator.model.Record;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Service;

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
                "(record_user_id, record_title, record_artist, record_genre, record_length_in_sec) " +
                            "VALUES (?, ?, ?, ?, ?) " +
                            "RETURNING record_id;";

        Integer idAssigned = jdbcTemplate.queryForObject(sql, Integer.class,
                newRecord.getUserId(),
                newRecord.getTitle(),
                newRecord.getArtist(),
                newRecord.getGenre(),
                newRecord.getLength()
        );
        return this.getRecord(idAssigned);
    }

        private Record mapRowToRecord(SqlRowSet rowSet) {
        Record record = new Record();

        record.setRecordId(rowSet.getInt("record_id"));
        record.setTitle(rowSet.getString("record_title"));
        record.setArtist(rowSet.getString("record_artist"));
        record.setLength(rowSet.getInt("record_length_in_sec"));
        record.setUserNotes(rowSet.getString("record_user_description"));
        record.setUserRating(rowSet.getInt("record_user_rating"));
        record.setCollectionId(rowSet.getInt("record_collection_id"));
        record.setGenre(rowSet.getString("record_genre"));

        return record;
    }

}