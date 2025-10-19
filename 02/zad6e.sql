SELECT ST_Distance(b.geometry, p.geometry) as distance
FROM buildings b, poi p
WHERE b.name = 'Building C' AND p.name = 'K'
