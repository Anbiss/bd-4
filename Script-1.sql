
--1 Задание
select g.name, count(*) from  executor_genre eg
join genre g on g.id = eg.genre
group by g.name 
order by count(*) desc; 

--2 Задание
SELECT a.name, COUNT(t.name) FROM album a
JOIN track t ON a.id = t.album_id
WHERE year BETWEEN 2019 AND 2020
GROUP BY a.name;

--3 Задание
SELECT a.name, avg(long) FROM album a
JOIN track t ON a.id = t.album_id
GROUP BY a.name;


--4 Задание
select e.name from executor e 
where e.name not in (
select e.name from executor e 
join executor_album ea on ea.executor = e.id 
join album a on a.id = ea.album 
where a.year = 2020);

--5 Задание
select distinct c.name from track_complication tc 
join complitation c on tc.complitation = c.id 
join track t on t.id = tc.track 
join album a on a.id = t.album_id 
join executor_album ea on ea.album = a.id 
join executor e on e.id = ea.id 
where e.name like 'Gorillaz';


--6 Задание
select a.name, count(eg.genre) from album a 
join executor_album ea on ea.album = a.id 
join executor e on e.id = ea.executor 
join executor_genre eg on eg.executor = e.id 
join genre g on g.id = eg.genre 
group by a.name
having count(eg.genre) != 1;


-- 7 Задание
select t.name from track_complication tc 
full join track t on t.id = tc.track
where complitation is null;


--8 Задание
select distinct e.name, t.long from track t 
join album a on a.id = t.album_id 
join executor_album ea on ea.executor = a.id 
join executor e on e.id = ea.executor 
where long = (select min(long) from track);


--9 Задание
select a.name, count(t.name) from album a 
join track t  on t.album_id = a.id
group by a.id
having count(t.name) = (
    select count(t.name) from album a
    join track t  on t.album_id = a.id
    group by a.id
    order by count(t.name)
    limit 1);