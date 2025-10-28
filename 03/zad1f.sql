INSERT INTO obiekty (geometria, nazwa)
VALUES (
    ST_GeomFromText('GEOMETRYCOLLECTION(
        POINT(4 2),
        LINESTRING(1 1, 3 2)
    )'),
    'obiekt6'
);