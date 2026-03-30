SELECT
    estado,
    COUNT(*)  AS cantidad_viajes,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 1) AS porcentaje
FROM viajes
GROUP BY estado
ORDER BY  cantidad_viajes DESC;