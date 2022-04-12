BEGIN TRANSACTION;

DROP TABLE IF EXISTS collections;
DROP SEQUENCE IF EXISTS seq_collection_id;

DROP TABLE IF EXISTS records;
DROP SEQUENCE IF EXISTS seq_record_id;

DROP TABLE IF EXISTS users;
DROP SEQUENCE IF EXISTS seq_user_id;

CREATE SEQUENCE seq_user_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;
  
CREATE SEQUENCE seq_record_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;
  
CREATE SEQUENCE seq_collection_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1; 

CREATE TABLE users (
	user_id int DEFAULT nextval('seq_user_id'::regclass) NOT NULL,
	username varchar(50) UNIQUE NOT NULL,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE records (
	record_id int DEFAULT nextval('seq_record_id'::regclass) NOT NULL,
	record_user_id int NOT NULL,
	record_title varchar(50) NOT NULL,
	record_artist varchar(50) NOT NULL,
	record_release_date DATE NOT NULL,
	record_genre varchar(50) NOT NULL,
	record_user_description varchar(255),
	record_user_rating int,
	record_length_in_sec int,
	CONSTRAINT fk_user_id FOREIGN KEY (record_user_id) REFERENCES users(user_id),
	CONSTRAINT PK_record_id PRIMARY KEY (record_id)
);

CREATE TABLE collections (
	collection_id int DEFAULT nextval('seq_collection_id'::regclass) NOT NULL,
	collection_user_id int NOT NULL,
	collection_record_id int NOT NULL,
	is_public boolean DEFAULT 'false',
	collection_name varchar(50) NOT NULL,
	CONSTRAINT fk_record_id FOREIGN KEY (collection_record_id) REFERENCES records(record_id),
	CONSTRAINT fk_user_id FOREIGN KEY (collection_user_id) REFERENCES users(user_id),
	CONSTRAINT PK_collection_id PRIMARY KEY (collection_id)
);

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

COMMIT TRANSACTION;