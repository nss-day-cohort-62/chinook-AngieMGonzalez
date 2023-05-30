-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT 
  p.Name AS PlaylistName,
  COUNT(pt.TrackId) AS PlaylistTrackTotals
FROM Playlist p
JOIN PlaylistTrack pt 
  ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId;

SELECT 
  COUNT(*) AS TotalTracks,
  pl.Name  AS PlayListName
FROM PlaylistTrack pt
JOIN Playlist pl 
  ON pl.PlaylistId = pt.PlaylistId
GROUP BY pl.PlaylistId;
