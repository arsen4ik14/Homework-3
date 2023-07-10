CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	year_of_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Musical_genre (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Music_artist (
	id SERIAL PRIMARY KEY,
	nickname VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist_genre (
	music_artist_id INTEGER REFERENCES Music_artist(id),
	musical_genre_id INTEGER REFERENCES Musical_genre(id),
	CONSTRAINT artist_genre_pk PRIMARY KEY (music_artist_id, musical_genre_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	year_of_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(60) NOT NULL,
	duration TIME,
	album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection_tracks (
	collection_id INTEGER REFERENCES Collection(id),
	track_id INTEGER REFERENCES Track(id),
	CONSTRAINT collection_tracks_pk PRIMARY KEY (collection_id, track_id)
);

CREATE TABLE IF NOT EXISTS Albums_artist (
	album_id INTEGER REFERENCES Album(id),
	music_artist_id INTEGER REFERENCES Music_artist(id),
	CONSTRAINT albums_artist_pk PRIMARY KEY (album_id, music_artist_id)
);