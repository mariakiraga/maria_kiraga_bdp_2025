SELECT ST_Area(
ST_SymDifference(geometry, ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))'))
)
FROM buildings
WHERE name = 'Building C'
