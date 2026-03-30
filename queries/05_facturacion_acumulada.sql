SELECT
    fecha_compra,
    SUM(precio)              AS ingresos_del_dia,
    SUM(SUM(precio)) OVER (ORDER BY fecha_compra) AS ingreso_acumulado
FROM boletos
GROUP BY fecha_compra
ORDER BY fecha_compra;