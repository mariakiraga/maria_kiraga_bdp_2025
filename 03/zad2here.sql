WITH selected AS ((
    SELECT polygon_id, geom
    FROM t2019_kar_buildings
    EXCEPT
    SELECT polygon_id, geom
    FROM t2018_kar_buildings
)
UNION
(
    SELECT polygon_id, geom
    FROM t2018_kar_buildings
    EXCEPT
    SELECT polygon_id, geom
    FROM t2019_kar_buildings
)),
new_poi AS (
    SELECT poi_id, geom, type
    FROM t2019_kar_poi
    EXCEPT
    SELECT poi_id, geom, type
    FROM t2018_kar_poi
)

SELECT COUNT(DISTINCT poi_id)
FROM new_poi p, selected s
WHERE ST_DWithin(p.geom, s.geom, 500)
GROUP BY p.type