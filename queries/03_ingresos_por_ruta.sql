SELECT
    r.origen,
    r.destino,
    SUM(precio)   AS total_ingresos,
    COUNT(*)   AS cantidad_pasajeros,
    ROUND(AVG(precio), 2) AS ingreso_promedio
FROM boletos b
INNER JOIN viajes v  ON b.viaje_id = v.viaje_id  
INNER JOIN rutas r   ON v.ruta_id = r.ruta_id    
GROUP BY r.origen, r.destino    
ORDER BY total_ingresos DESC;