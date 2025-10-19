INSERT INTO buildings (geometry, name)
VALUES (
    ST_GeomFromText('POLYGON((8 4, 10.5 4, 10.5 1.5, 8 1.5, 8 4))'),
    'Building A'
);

INSERT INTO buildings (geometry, name)
VALUES (
    ST_GeomFromText('POLYGON((4 7, 6 7, 6 5, 4 5, 4 7))'),
    'Building B'
);

INSERT INTO buildings (geometry, name)
VALUES (
    ST_GeomFromText('POLYGON((3 8, 5 8, 5 6, 3 6, 3 8))'),
    'Building C'
);

INSERT INTO buildings (geometry, name)
VALUES (
    ST_GeomFromText('POLYGON((9 9, 10 9, 10 8, 9 8, 9 9))'),
    'Building D'
);

INSERT INTO buildings (geometry, name)
VALUES (
    ST_GeomFromText('POLYGON((1 2, 2 2, 2 1, 1 1, 1 2))'),
    'Building F'
);

