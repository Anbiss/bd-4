insert into Executor (id, name) values
    (1, 'Queen'),
    (2, 'Nirvana'), 
    (3, 'RHCP'), 
    (4, 'Ac\Dc'), 
    (5, 'Gorrilaz'),
    (6, 'LP'),
    (7, 'КиШ'),
    (8, 'Сплин');


update executor 
set name = 'Gorillaz'
where id = 5;



insert into Genre (id, name) values
    (1, 'Rock'),
    (2, 'Techno'),
    (3, 'Hip hop'),
    (4, 'Pop'),
    (5, 'Blues');

   
   
insert into Album (id, name, year) values
    (1, 'News of the World', 1977),
    (2, 'A Night at the Opera', 1975),
    (3, 'Nevermind', 1991),
    (4, 'Californication ', 1999),
    (5, 'Back in Black', 1980),
    (6, 'Meteora', 2003),
    (7, 'Demon Days', 2005),
    (8, 'Гранатовый альбом', 1998);


   
   
insert into Track (id, name, long, Album_id) values
    (1, 'We will rock you', 2.15, 1),
    (2, 'We are the champions', 3.11 , 1),
    (3, 'Bohemian rhapsody', 5.54, 2),
    (4, 'Love of my life', 3.42, 2),
    (5, 'Smells Like Teen Spirit', 5.01, 3),
    (6, 'Come as You Are', 3.38, 3),
    (7, 'Something in the Way', 3.16, 3),
    (8, 'Back in Black', 4.13, 5),
    (9, 'Hells Bells', 5.09, 5),
    (10, 'Californication', 5.21, 4),
    (11, 'Around the World', 3.58, 4),
    (12, 'Breaking the Habit', 3.16, 6),
    (13, 'Feel Good Inc.', 3.41, 7),
    (14, 'Kids With Guns', 3.45, 7),
    (15, 'Выхода нет', 3.43, 8);


insert into complitation  (id, name, year) values
	(1, 'Eternal hits', 1980),
	(2, 'Best rock', 1970),
	(3, 'Лучшие песни русского рока', 2000),
	(4, 'Music 2000', 2000),
	(5, 'Best hits 90s', 1990),
	(6, 'Best hits 80s', 1980),
	(7, 'Best hits 70s', 1970),
	(8, 'Best Classic', 1990);
	


insert into executor_genre  (executor, genre) values
	(1, 1),
    (1, 4),
    (2, 1),
    (2, 5),
    (3, 1),
    (3, 3),
    (4, 1),
    (5, 2),
    (5, 3),
    (6, 1),
    (6, 3),
    (7, 1),
    (8, 1),
    (8, 4);

insert into executor_album  (executor, album) values
	(1, 1),
	(1, 2),
	(2, 3),
	(3, 4),
	(4, 5),
	(5, 7),
	(6, 6),
	(8, 8);

insert into track_complication  (track, complitation) values
	(1, 1),
	(1, 2),
	(1, 7),
	(2, 1),
	(2, 2),
	(2, 7),
	(3, 1),
	(3, 2),
	(3, 7),
	(3, 8),
	(4, 1),
	(4, 2),
	(4, 7),
	(5, 1),
	(5, 2),
	(5, 5),
	(6, 1),
	(6, 5),
	(7, 1),
	(8, 1),
	(8, 6),
	(9, 1),
	(9, 6),
	(10, 1),
	(10, 2),
	(11, 2),
	(12, 2),
	(12, 8),
	(13, 4),
	(14, 4),
	(15, 3);
	

-- Задача 2

select name, year from album
where  year = 1999;

select name, long from track
where long = (select max(long) from track);

select name from track
where long >= 3.5;

select year from complitation
where year between 1970 and 2000;

select name from executor
where name not like '% %';

select name from track
where name like '%нет%' or name like '%my%';