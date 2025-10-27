SELECT SUM(ST_Area(ST_Buffer(geometria, 5)))
FROM obiekty
WHERE NOT ST_HasArc(geometria);

--  Wyznacz pole powierzchni wszystkich buforów o wielkości 5 jednostek, które zostały utworzone 
-- wokół obiektów nie zawierających łuków. 