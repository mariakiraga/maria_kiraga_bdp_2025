INSERT INTO obiekty (geometria, nazwa)
VALUES (
    ST_GeomFromText('LINESTRING(7 15, 10 17, 12 13, 7 15)'),
    'obiekt3'
);