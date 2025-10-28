WITH sport_stores AS (
    SELECT poi_id, geom
    FROM t2019_kar_poi
    WHERE type = 'Sporting Goods Store'
)
SELECT COUNT(DISTINCT s.poi_id)
FROM sport_stores s
JOIN t2019_kar_land_use_a lua
  ON ST_DWithin(s.geom, lua.geom, 300)