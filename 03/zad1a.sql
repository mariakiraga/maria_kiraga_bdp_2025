INSERT INTO obiekty (geometria, nazwa)
VALUES (
    ST_GeomFromText('COMPOUNDCURVE(
		(0 1, 1 1),
		CIRCULARSTRING(1 1, 2 0, 3 1),
		CIRCULARSTRING(3 1, 4 2, 5 1),
		(5 1, 6 1))'),
    'obiekt1'
);
