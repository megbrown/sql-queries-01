-- 1. Query all of the entries in the Genre table

-- SELECT * FROM genre



-- 2. Using the INSERT statement, add one of your favorite artists to the Artist table.

-- INSERT into Artist
-- (ArtistId, ArtistName, YearEstablished)
-- VALUES (29, 'Jenny Lewis', '2006')



-- 3. Using the INSERT statement, add one, or more, albums by your artist to the Album table.

-- INSERT into Album
-- (AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
-- VALUES (25, 'Voyager', '07/29/2014', 1527, 'Warner Bros.', 29, 7)



-- 4. Using the INSERT statement, add some songs that are on that album to the Song table.

-- INSERT into Song
-- (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
-- VALUES (23, 'Just One of the Guys', 231, '07/29/2014', 7, 29, 25)
-- INSERT into Song
-- (SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
-- VALUES (24, 'Head Underwater', 248, '07/29/2014', 7, 29, 25)



-- 5. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in.
-- Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
-- Here is some more info on joins that might help.

-- Reminder: Direction of join matters. Try the following statements and see the difference in results.
-- SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
-- SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

-- SELECT s.Title AS 'Song Title', a.Title AS 'Album Title', r.ArtistName AS 'Artist Name'
-- FROM
-- Song s, Artist r, Album a
-- WHERE s.AlbumId = a.AlbumId
-- AND s.ArtistId = r.ArtistId
-- AND r.ArtistName = "Jenny Lewis"

-- SELECT s.title "Song Title", al.title "Album Title", ar.ArtistName "Artist Name"
-- FROM artist ar, song s
-- LEFT JOIN album al ON al.albumId = s.albumId
-- WHERE ar.artistName = "Jenny Lewis"
-- AND al.artistId = ar.artistId



-- 6. Write a SELECT statement to display how many songs exist for each album.
-- You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- SELECT COUNT(s.SongId) AS 'Song Count', al.title AS "Album"
-- FROM song s, album al
-- WHERE al.albumId = s.albumId
-- GROUP BY s.albumId



-- 7. Write a SELECT statement to display how many songs exist for each artist.
-- You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- SELECT COUNT(s.songId) AS 'song count', ar.artistName
-- FROM song s, artist ar
-- WHERE ar.artistId = s.artistId
-- GROUP BY ar.artistId



-- 8. Write a SELECT statement to display how many songs exist for each genre.
-- You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- SELECT COUNT(SongId) AS 'song count', g.label
-- FROM song s, genre g
-- WHERE s.genreID = g.genreId
-- GROUP BY s.genreId



-- 9. Using MAX() function, write a select statement to find the album with the longest duration.
-- The result should display the album title and the duration.

-- SELECT MAX(AlbumLength) AS Duration, title 'Song Name'
-- FROM album



-- 10. Using MAX() function, write a select statement to find the song with the longest duration.
-- The result should display the song title and the duration.

-- SELECT MAX(SongLength) AS Duration, title 'Song Name'
-- FROM song



-- 11. Modify the previous query to also display the title of the album.

-- SELECT MAX(SongLength) AS Duration, s.title 'Song Name', a.title "Album Name"
-- FROM song s, album a
-- WHERE s.albumId = a.albumId