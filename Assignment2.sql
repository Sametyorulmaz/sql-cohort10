
/*Assignment - 2 (SQL | Aggregate Functions & JOINs)*/


-- 1
SELECT AlbumId, count(name) as tracks_number
FROM tracks
GROUP BY AlbumId;

-- 2
SELECT tracks.name,albums.Title
FROM tracks
JOIN albums ON tracks.AlbumId = albums.AlbumId;

-- 3


SELECT tracks.AlbumId,albums.Title,min(Milliseconds) as minimum
FROM albums
JOIN tracks ON albums.ArtistId = tracks.AlbumId
GROUP BY Title
ORDER BY minimum DESC

---4
SELECT tracks.AlbumId,albums.Title,sum(Milliseconds) as total
FROM albums
JOIN tracks ON albums.ArtistId = tracks.AlbumId
GROUP BY Title
ORDER BY total DESC;

---5
SELECT albums.Title,sum(Milliseconds) as total
FROM albums
JOIN tracks ON albums.ArtistId = tracks.AlbumId
GROUP BY Title
HAVING total >4200000;
