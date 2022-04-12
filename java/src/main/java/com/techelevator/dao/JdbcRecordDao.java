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
        final String sql = "";
        SqlRowSet results = this.jdbcTemplate.queryForRowSet(sql, recordId);
        Record record = null;
        if (results.next()) {
            record = mapRowToRecord(results);
        }
        return record;
    }

    @Override
    public Record createRecord(Record newRecord) {
        final String sql = "";
        Integer idAssigned = jdbcTemplate.queryForObject(sql, Integer.class,
                newRecord.getTitle(),
                newRecord.getArtist(),
                newRecord.getYearReleased(),
                newRecord.getLength(),
                newRecord.getUserNotes(),
                newRecord.getUserRating()
        );
        return this.getRecord(idAssigned);
    }

        private Record mapRowToRecord(SqlRowSet rowSet) {
        Record record = new Record();

        record.setRecordId(rowSet.getInt("record_id"));
        record.setTitle(rowSet.getString("title"));
        record.setArtist(rowSet.getString("artist"));
        record.setYearReleased(rowSet.getInt("yearReleased"));
        record.setLength(rowSet.getInt("length"));
        record.setUserNotes(rowSet.getString("notes"));
        record.setUserRating(rowSet.getString("rating"));

        return record;
    }

}