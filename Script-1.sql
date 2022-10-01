CREATE TABLE IF NOT EXISTS genres(
id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL);
CREATE TABLE IF NOT EXISTS performer(
id SERIAL PRIMARY KEY,
name VARCHAR(80));
CREATE TABLE IF NOT EXISTS genres_performer(
genres_id INTEGER REFERENCES genres(id),
performer_id INTEGER REFERENCES performer(id),
CONSTRAINT pk PRIMARY KEY (genres_id, performer_id));
CREATE TABLE IF NOT EXISTS album(
id SERIAL PRIMARY KEY,
name VARCHAR(60),
created date);
CREATE TABLE IF NOT EXISTS tracks(
id SERIAL PRIMARY KEY,
duration time,
album_id INTEGER REFERENCES album(id));
CREATE TABLE IF NOT EXISTS collection(
id SERIAL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
created date);
CREATE TABLE IF NOT EXISTS collection_traks(
tracks_id INTEGER REFERENCES tracks(id),
collection_id INTEGER REFERENCES collection(id),
CONSTRAINT pn PRIMARY KEY (tracks_id, collection_id));
CREATE TABLE IF NOT EXISTS album_performer(
album_id INTEGER REFERENCES album(id),
performer_id INTEGER REFERENCES performer(id),
CONSTRAINT pl PRIMARY KEY (album_id, performer_id));

ALTER TABLE tracks 
ADD name VARCHAR(60);
ALTER TABLE collection
ADD collection_id INTEGER;
ALTER TABLE collection 
ADD tracks_id INTEGER;
ALTER TABLE collection 
DROP COLUMN collection_id;


