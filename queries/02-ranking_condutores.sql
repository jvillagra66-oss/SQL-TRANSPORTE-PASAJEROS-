SELECT
    c.nombre,
    COUNT(*)                                               AS cantidad_viajes,
    ROUND(AVG(v.demora_minutos), 1)                        AS demora_promedio,
    ROW_NUMBER() OVER (ORDER BY AVG(v.demora_minutos) DESC) AS ranking
FROM viajes v
INNER JOIN conductores c ON v.conductor_id = c.conductor_id
WHERE v.estado != 'CANCELADO'
GROUP BY c.nombre
ORDER BY demora_promedio DESC;