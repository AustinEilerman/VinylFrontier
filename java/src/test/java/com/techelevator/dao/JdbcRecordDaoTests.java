package com.techelevator.dao;

import com.fasterxml.jackson.databind.ser.Serializers;
import com.techelevator.model.Record;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class JdbcRecordDaoTests extends BaseDaoTests {

    protected static final Record testRecord = new Record(1, "Test Record", "Test Guy", "Test Music");

    private JdbcRecordDao sut;

    @Before
    public void setup() {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        sut = new JdbcRecordDao(jdbcTemplate);
    }

    @Test
    public void testing_createRecord_creates_not_null_record() {
        Record result = sut.createRecord(testRecord);

        Assert.assertNotNull("This record is null", result);

    }
}
