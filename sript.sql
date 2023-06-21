create table if not exists genres (
	genre_id SERIAL primary key,
	genre_name VARCHAR(80) unique not null
);

create table if not exists artists (
	artist_id SERIAL primary key,
	artist_name VARCHAR(80) unique not null
);

create table if not exists genres_artists (
	genre_id integer references genres(genre_id),
	artist_id integer references artists(artist_id),
	constraint pk primary key (genre_id, artist_id)
);

create table if not exists albums (
	album_id SERIAL primary key,
	album_name VARCHAR(80) unique not null,
	date_release DATE
);

create table if not exists albums_artists (
	artist_id integer references artists(artist_id),
	album_id integer references albums(album_id),
	constraint ak primary key (artist_id, album_id)
);

create table if not exists tracks (
	track_id SERIAL primary key,
	track_name VARCHAR(80),
	duration integer,
	album_id integer not null references albums(album_id) 
);

create table if not exists collections (
	collection_id SERIAL primary key,
	collection_name VARCHAR(80) unique not null,
	date_release DATE
);

create table if not exists collection_tracks (
	collection_id integer not null references collections(collection_id),
	track_id integer not null references tracks(track_id)
);



