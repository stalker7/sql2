
SELECT g.name, COUNT(p.name) FROM genres g 
LEFT JOIN genres_performer gp ON g.id = gp.genres_id 
LEFT JOIN performer p ON gp.performer_id = p.id 
GROUP BY g.name
ORDER BY COUNT(p.name) DESC;

SELECT t.name,a.created FROM album a 
LEFT JOIN tracks t ON a.id = t.id
WHERE (a.created >= '2019-01-01') AND (a.created <= '2020-12-31');

SELECT a.name, AVG(duration) FROM album a 
LEFT JOIN tracks t ON t.album_id  = a.id 
GROUP BY a.name
ORDER BY AVG(duration) DESC;


SELECT DISTINCT p.name FROM performer p 
WHERE p.name NOT IN 
(SELECT DISTINCT p.name FROM album_performer ap 
LEFT JOIN performer p ON p.id = ap.performer_id 
LEFT JOIN album a ON a.id = ap.album_id 
WHERE a.created >= '2020-01-01' AND a.created <= '2020-12-31')
ORDER BY p.name;

SELECT t.name  FROM tracks t  
LEFT JOIN collection_traks ct  ON t.id = ct.tracks_id 
WHERE ct.tracks_id IS NULL;

SELECT a.name FROM album_performer ap 
LEFT JOIN album a ON ap.album_id = a.id 
LEFT JOIN performer p ON ap.performer_id = p.id 
LEFT JOIN genres_performer gp ON gp.performer_id = p.id
LEFT JOIN genres g ON gp.genres_id = g.id
GROUP BY a.name
HAVING COUNT (DISTINCT g.name) > 1
ORDER BY a.name DESC ;

 
SELECT a.name, count(t.name)  FROM album a 
LEFT JOIN tracks t ON a.id = t.album_id 
GROUP BY a.name
HAVING COUNT(t.name) = (SELECT COUNT(t.name) FROM album a
LEFT JOIN tracks t ON a.id = t.album_id
GROUP BY a.name
ORDER BY COUNT(t.name) LIMIT 1);


SELECT p.name,t.duration FROM album_performer ap 
LEFT JOIN performer p ON p.id = ap.performer_id 
LEFT JOIN album a ON a.id = ap.album_id 
LEFT JOIN tracks t ON t.id = a.id  
WHERE t.duration = (SELECT min(duration) FROM tracks t2  );


SELECT DISTINCT c.name FROM collection c 
LEFT JOIN collection_traks ct ON ct.collection_id = c.id 
LEFT JOIN tracks t ON t.id = ct.tracks_id 
LEFT JOIN album a ON a.id = t.album_id 
LEFT JOIN album_performer ap ON ap.album_id = a.id 
LEFT JOIN performer p ON ap.performer_id = p.id 
WHERE p.name ILIKE '%Ado%'
ORDER BY c.name DESC;



 







 










