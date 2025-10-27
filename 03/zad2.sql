SELECT ST_Area(ST_Buffer(ST_ShortestLine(o3.geometria, o4.geometria), 5)) 
FROM obiekty o3, obiekty o4
WHERE o3.nazwa = 'obiekt3' AND o4.nazwa = 'obiekt4'

--  Wyznacz pole powierzchni bufora o wielkości 5 jednostek, który został utworzony wokół 
-- najkrótszej linii łączącej obiekt 3 i 4. 