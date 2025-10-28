CREATE TABLE t2019_kar_bridges AS
SELECT
    ROW_NUMBER() OVER () AS bridge_id,
    ST_Intersection(r.geom, w.geom) AS geom
FROM t2019_kar_railways r
JOIN t2019_kar_water_lines w
ON ST_Intersects(r.geom, w.geom);