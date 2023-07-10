-- Название и год выхода альбомов, вышедших в 2018 году
SELECT title, year_of_release FROM Album 
WHERE year_of_release = 2018;

-- Название и продолжительность самого длительного трека
SELECT track_name, duration FROM Track
ORDER BY duration DESC
LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минуты
SELECT track_name FROM Track
WHERE duration >= '00:03:30';

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT title FROM Collection
WHERE year_of_release BETWEEN 2018 AND 2020;

-- Исполнители, чье имя состоит из 1 слова
SELECT nickname FROM Music_artist
WHERE nickname NOT LIKE '% %';

-- Название треков, которые содержат слово “мой”/“my”
SELECT track_name FROM track
WHERE track_name LIKE '% My %' OR track_name LIKE '% Мой %' 
OR track_name LIKE '% My' OR track_name LIKE '% Мой'
OR track_name LIKE 'My %' OR track_name LIKE 'Мой %'
OR track_name LIKE 'My' OR track_name LIKE 'Мой';