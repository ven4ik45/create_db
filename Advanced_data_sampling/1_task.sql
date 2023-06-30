insert into artists(artist_name)
values ('Linkin Park'), ('Limp Bizkit'), ('Лепс'), ('Филипп Киркоров'), ('Егор Крид');


insert into genres(genre_name)
values ('alternative'), ('pop'), ('rap');


insert into albums(album_name, date_release)
values ('Meteora', '03/25/2003'), ('Hybrid Theory', '10/24/2000'), ('Significant Other', '06/22/1999'), 
	('Gold Cobra', '01/01/2011'), ('Лабиринт', '05/01/2006'), ('Незнакомка', '04/23/2003'), 
	('Отпускаю', '02/11/2022'), ('Vsyakoe', '03/25/2019'), ('Album 1', '06/05/2020');


insert into tracks(track_name, duration, album_id)
values ('Faint', 162, 1), ('Breaking the Habit', 196, 1), ('In the End', 216, 2), ('One Step Closer', 156, 2), 
	('Break Stuff', 167, 3), ('Get A Life', 294, 4), ('Чёрный дождь', 189, 5), ('Роза чайная', 262, 6),
	('Отпускаю', 192, 7), ('My track', 162, 1), ('Track_1', 152, 8), ('Track_2', 139, 8), ('Track_3', 214, 8), ('Track_4', 202, 9);


insert into collections(collection_name, date_release)
values ('Top Linkin', '12/21/2020'), ('Link&Bizkit', '10.21.2021'), 
	('Best POP', '02/01/2018'), ('RU TRACKS', '01/07/2023');


insert into albums_artists(artist_id, album_id)
values (1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (4, 6), (5, 7), (3, 9);


insert into collection_tracks (collection_id, track_id)
values (1, 1), (1, 4), (2, 3), (2, 1), (3, 7), (3, 8), (4, 7), (4, 8), (4, 9);


insert into genres_artists (genre_id, artist_id)
values (1, 1), (1, 2), (2, 3), (2, 4), (3, 5);

