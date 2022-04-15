INSERT INTO records(record_user_id, record_title, record_artist, record_release_date, record_genre, record_length_in_sec) VALUES (1, 'Dark Side Of The Moon', 'Pink Floyd', '1973-3-1', 'Psychedelic Rock', 2585);
INSERT INTO collections(collection_user_id, is_public, collection_name) VALUES (1, 'true', 'Best Albums Of All Time');
INSERT INTO records(record_user_id, record_title, record_artist, record_release_date, record_genre, record_length_in_sec) VALUES (1, 'The Beatles (White Album)', 'The Beatles', '1968-11-22', 'Pop', 5580);
INSERT INTO collections(collection_user_id, is_public, collection_name) VALUES (1, 'false', 'Worst Albums Of All Time');

SELECT * FROM records WHERE record_user_id = 3;

SELECT * FROM users;

SELECT *
FROM records
JOIN records_collections ON records.record_id = records_collections.record_id
JOIN collections ON collections.collection_id = records_collections.collection_id
WHERE record_user_id = 1;