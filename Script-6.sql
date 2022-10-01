INSERT INTO performer (name)
VALUES ('Metallica'),('Savage'),('Placebo'),('Chet Baker'),
('Linkin Park'),('Woodskream'),('Murkur'),('Ado');
INSERT INTO album (name, created)
VALUES ('Kuegen','2022-01-26'),('Lulu', '2011-02-23'),('Covers', '2007-05-7'),
('Folkesang', '2020-09-23'),('Pentadrama','2016-09-22'),('Capsicum','1984-07-13'),
('IN NEW YORK', '1958-07-08'),('Heavy', '2017-04-20');
INSERT INTO tracks (album_id,name, duration)
VALUES (2, 'Lulu','00:05:07'),(2,'Laurit','00:04:50'),(1,'Track','00:03:22'),(1,'Dragon','00:11:10'),
(3,'Only you','00:05:20'),(3,'Save me','00:06:09'),(7,'Do it The Hard Way','00:03:00'),(7,'Solar','00:05:51'),
(4,'Ramund','00:03:28'),(4,'Svea','00:03:26'),(6,'The bug','00:03:42'),(6,'Fosterdatico','00:03:10'),
(5,'Akonit','00:03:35'),(5,'Triangle','00:04:12'),(8,'Savior','00:04:02'),(8,'Fuel','00:04:29');
INSERT INTO collection (name, created,tracks_id)
VALUES ('big','2018-09-09',1),('big','2018-09-09',3),('big','2018-09-09',5),('big','2018-09-09',7),
('big','2018-09-09',10),('big','2018-09-09',12),
('genre','2022-07-07',12),('genre','2022-07-07',11),
('genre','2022-07-07',3),('genre','2022-07-07',6),
('kelly','2000-01-01',15),('kelly','2000-01-01',14),('kelly','2000-01-01',13),('kelly','2000-01-01',12),
('kelly','2000-01-01',11),
('one','2022-09-16',16),
('five','1998-04-22',10),('five','1998-04-22',10),('five','1998-04-22',9),('five','1998-04-22',8),
('select','2019-08-23',3),('select','2019-08-23',4),('select','2019-08-23',6),('select','2019-08-23',8),
('select','2019-08-23',10),('select','2019-08-23',12),
('seven','2020-09-12',14),('seven','2020-09-12',16),
('last','1990-05-06',11),('last','1990-05-06',13),('last','1990-05-06',15);
INSERT INTO collection_traks (collection_id, tracks_id)
VALUES (1,1),(2,3),(3,5),(4,7),(5,10),(6,12),(7,12),(8,11),(9,3),
(10,6),(11,15),(12,14),(13,13),(14,12),(15,11),(16,16),(17,10),(18,3),
(19,9),(20,8),(21,3),(22,4),(23,6),(24,8),(25,10),(26,12),(27,14),(28,16),
(29,11),(30,13),(31,15);
INSERT INTO genres(name)
VALUES ('pop'),('rock'),('folk'),('metal'),('jazz');
INSERT INTO album_performer (album_id, performer_id)
VALUES (2,1),(3,2),(5,3),(7,4),(8,5),(4,6),(1,7),(6,8);
INSERT INTO genres_performer(genres_id, performer_id)
VALUES (1, 2),(2, 3),(2, 5),(3, 6),(3, 7),(4, 1),(1, 8),(5, 4);
INSERT INTO tracks (album_id,name,duration)
VALUES (2, 'Battary','00:05:12');