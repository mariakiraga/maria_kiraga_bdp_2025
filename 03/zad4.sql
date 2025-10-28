
INSERT INTO obiekty (geometria, nazwa)
SELECT 
    ST_Collect(o3.geometria, o4.geometria),
    'obiekt7'
FROM obiekty o3, obiekty o4
WHERE o3.nazwa = 'obiekt3' AND o4.nazwa = 'obiekt4';

--  W tabeli obiekty, jako obiekt7 zapisz obiekt złożony z obiektu 3 i obiektu 4.