WITH envios_demorados AS (
    SELECT  origen,
            peso_kg
    FROM    envios
    WHERE   estado = 'DEMORADO'
)
SELECT
    origen,
    COUNT(*)        AS cantidad_envios,
    SUM(peso_kg)    AS peso_total
FROM    envios_demorados
GROUP BY origen
ORDER BY peso_total DESC;