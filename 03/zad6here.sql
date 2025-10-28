WITH lines AS (
	SELECT ST_MakeLine(geom ORDER BY id) AS geom
	FROM input_points
),
nodes_reprojected AS (
	SELECT node_id, ST_Transform(geom, 3068) AS geom
	FROM t2019_kar_street_node
)

SELECT DISTINCT n.node_id
FROM nodes_reprojected as n, lines as l
WHERE ST_DWithin(n.geom, l.geom, 200);