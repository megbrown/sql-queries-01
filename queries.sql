-- 1. Query all of the entries in the Genre table

-- SELECT * FROM genre


-- 2. Using the INSERT statement, add one of your favorite artists to the Artist table.

-- INSERT into Artist
-- (ArtistId, ArtistName, YearEstablished)
-- VALUES (29, 'Jenny Lewis', '2006')


-- 3. Using the INSERT statement, add one, or more, albums by your artist to the Album table.

-- INSERT into Album
-- (AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
-- VALUES(25, 'Voyager', '07/29/2014', 1527, 'Warner Bros.', 29, 7)


-- Using the INSERT statement, add some songs that are on that album to the Song table.

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.

-- Reminder: Direction of join matters. Try the following statements and see the difference in results.
-- SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
-- SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;
-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

-- Modify the previous query to also display the title of the album.