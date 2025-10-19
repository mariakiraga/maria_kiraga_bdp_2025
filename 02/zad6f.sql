SELECT ST_Area(
ST_Difference(c.geometry, ST_Buffer(b.geometry, 0.5))
)
FROM buildings c, buildings b
WHERE c.name = 'Building C' AND b.name = 'Building B'
