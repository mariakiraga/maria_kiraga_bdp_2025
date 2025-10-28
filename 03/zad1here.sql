(
    SELECT polygon_id
    FROM t2019_kar_buildings
    EXCEPT
    SELECT polygon_id
    FROM t2018_kar_buildings
)
UNION
(
    SELECT polygon_id
    FROM t2018_kar_buildings
    EXCEPT
    SELECT polygon_id
    FROM t2019_kar_buildings
);