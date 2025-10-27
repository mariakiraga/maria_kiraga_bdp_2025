INSERT INTO obiekty (geometria, nazwa)
VALUES (
    ST_GeomFromText('GEOMETRYCOLLECTION(
            COMPOUNDCURVE(
                LINESTRING(10 6, 14 6),
                CIRCULARSTRING(14 6, 16 4, 14 2),
				CIRCULARSTRING(14 2, 12 0, 10 2),
                LINESTRING(10 2, 10 6)
            ),
            CIRCULARSTRING(11 2, 13 2, 11 2)
        )'),
    'obiekt2'
);