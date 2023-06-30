-- 2 задание
-- Название и продолжительность самого длительного трека.
select track_name, duration from tracks t
where duration = (select max(duration) from tracks t2);

-- Название треков, продолжительность которых не менее 3,5 минут.
select track_name from tracks t 
where duration > 3.5*60;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select collection_name, date_release  from collections c 
where date_release between '01/01/2018' and '01/01/2021';

-- Исполнители, чьё имя состоит из одного слова.
select artist_name  from artists a 
where artist_name not like '% %';

-- Название треков, которые содержат слово «мой» или «my».
select track_name  from tracks t 
where LOWER(track_name) like '%my%';



-- 3 задание
-- Количество исполнителей в каждом жанре.
select count(artist_id), genre_name from genres_artists ga
left join genres g on ga.genre_id = g.genre_id
group by genre_name;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
select count(track_id), album_name from tracks t 
left join albums a on t.album_id = a.album_id
where a.date_release between '01/01/2019' and '01/01/2020'
group by a.album_name;

-- Средняя продолжительность треков по каждому альбому.
select album_name, avg(duration)  from albums a 
join tracks t on a.album_id = t.album_id 
group by album_name;

-- Все исполнители, которые не выпустили альбомы в 2020 году.
select * from artists a 
join albums_artists aa on a.artist_id = aa.artist_id 
join albums a2 on aa.album_id = a2.album_id 
where a2.date_release not between '01/01/2020' and '01/01/2021';

select distinct artist_name  from artists a3 
where artist_name != (select artist_name from albums a
join albums_artists aa on a.album_id = aa.album_id
join artists a2 on aa.artist_id = a2.artist_id 
where a.date_release between '01/01/2020' and '01/01/2021');

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select collection_name from collections c 
left join collection_tracks ct on c.collection_id = ct.collection_id 
join tracks t on ct.track_id = t.track_id 
join albums a on t.album_id = a.album_id 
join albums_artists aa on a.album_id = aa.album_id 
join artists a2 on aa.artist_id = a2.artist_id 
where a2.artist_name = 'Linkin Park';
