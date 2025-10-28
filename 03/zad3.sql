UPDATE obiekty
SET geometria = ST_MakePolygon(
    CASE 
        WHEN NOT ST_IsClosed(geometria)
        THEN ST_AddPoint(geometria, ST_StartPoint(geometria))
        ELSE geometria
    END
)
WHERE nazwa = 'obiekt4';

-- Zamień obiekt4 na poligon. Jaki warunek musi być spełniony, aby można było wykonać to 
-- zadanie? Zapewnij te warunki. 
-- obiekt musi byc "zamkinety"