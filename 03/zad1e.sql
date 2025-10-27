INSERT INTO obiekty (geometria, nazwa)
VALUES (
    ST_GeomFromText('MULTIPOINTZ((30 30 59), (38 32 234))'),
    'obiekt5'
);