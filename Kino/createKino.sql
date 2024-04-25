CREATE TABLE IF NOT EXISTS Film (
    FilmID INTEGER PRIMARY KEY,
    Titel TEXT NOT NULL,
    Länge INTEGER NOT NULL,
    Jahr INTEGER NOT NULL,
    RegisseurID INTEGER,
    FOREIGN KEY (RegisseurID) REFERENCES Regisseur(RegisseurID)
);
 
-- Erstelle die Tabelle "Regisseur"
CREATE TABLE IF NOT EXISTS Regisseur (
    RegisseurID INTEGER PRIMARY KEY,
    Vorname TEXT NOT NULL,
     Nachname TEXT NOT NULL,
    Geburtsdatum DATE
);

-- Erstelle die Tabelle "Jahr"
CREATE TABLE IF NOT EXISTS Erscheinungsjahr (
    Jahr INTEGER PRIMARY KEY
);

