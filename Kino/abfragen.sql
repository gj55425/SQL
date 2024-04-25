SELECT* From Film;
Select *From Regisseur

--Challenge 1--
SELECT  DISTINCT Jahr FROM Film
ORDER BY Jahr
SELECT MIN (Jahr) AS ältestes_Erscheinungsjahr FROM Film;

--Challenge 2--
SELECT DISTINCT Länge FROM Film
ORDER BY Länge DESC
LIMIT 1;

--Challenge 3--

SELECT Film.Titel, Regisseur.Vorname, Regisseur.Nachname
From Film INNER JOIN Regisseur 
ON Film.RegisseurID =Regisseur.RegisseurID
Where Regisseur.Nachname = "Scott"
ORDER BY Regisseur.Nachname;

--Challenge 4--
SELECT ROUND(AVG(Länge), 0) AS Durchschnittliche_Länge
FROM Film;

--Challenge 5--
SELECT R.Vorname, R.Nachname, COUNT(F.FilmID) AS Anzahl_Filme
FROM Regisseur R
LEFT JOIN Film F ON R.RegisseurID = F.RegisseurID
GROUP BY R.RegisseurID;

--Challenge 6--
SELECT Jahr, COUNT(*) AS Anzahl_Filme
FROM Film
GROUP BY Jahr
ORDER BY Anzahl_Filme DESC
LIMIT 1