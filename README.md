# 🚌 SQL Analytics — Transporte de Pasajeros de Larga Distancia

## KPI Operativo y Financiero — Empresa de Transporte Argentina

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-336791?style=flat&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Advanced-orange?style=flat)
![VSCode](https://img.shields.io/badge/VS%20Code-SQLTools-007ACC?style=flat&logo=visualstudiocode&logoColor=white)
![Git](https://img.shields.io/badge/Git-GitHub-181717?style=flat&logo=github&logoColor=white)
![Status](https://img.shields.io/badge/Status-Producción-brightgreen?style=flat)

---

## 🎯 Problema de negocio

Una empresa de transporte de pasajeros de larga distancia necesitaba
visibilidad operativa en tiempo real sobre 3 áreas críticas:

- **Puntualidad** — ¿qué conductores y rutas generan más demoras?
- **Rentabilidad** — ¿qué rutas generan más ingresos?
- **Facturación** — ¿cómo evolucionó la facturación día a día?

---

## 💡 Solución

Diseñé un modelo de datos relacional con **5 tablas relacionadas**
y construí **5 consultas analíticas de producción** usando PostgreSQL
con técnicas avanzadas de SQL.

## 🗂️ Modelo de datos
```
rutas ←── viajes ──→ conductores
              │
           boletos ──→ pasajeros
```

## 📊 Consultas desarrolladas

| # | Consulta | Técnicas aplicadas |
|---|----------|-------------------|
| 1 | Resumen operativo por estado | GROUP BY, Window Functions, porcentajes |
| 2 | Ranking de conductores por demora | JOIN, AVG, ROW_NUMBER() OVER |
| 3 | Ingresos por ruta | JOIN triple, SUM, GROUP BY |
| 4 | Clasificación de demoras | CTE, CASE WHEN, JOIN múltiple |
| 5 | Facturación acumulada diaria | SUM acumulado, Window Functions |

## 🔍 Insights obtenidos

- **30%** de los viajes llegaron demorados en el período
- **Buenos Aires → Mendoza** es la ruta más rentable ($8.500)
- **Roberto Sánchez** es el conductor con 0 minutos de demora promedio
- Facturación total del período: **$25.200**
- Día pico de ventas: **08/01/2024** con $5.300 en boletos

## 🛠️ Stack tecnológico

| Herramienta | Uso |
|-------------|-----|
| PostgreSQL 18 | Motor de base de datos |
| SQL avanzado | CTEs, Window Functions, JOINs múltiples |
| VS Code + SQLTools | Entorno de desarrollo |
| Git + GitHub | Control de versiones |

## 👤 Autor

**Jorge Villagra** — Supply Chain & Data Analyst

6 años de experiencia en logística y distribución nacional

[![GitHub](https://img.shields.io/badge/GitHub-jvillagra66--oss-181717?style=flat&logo=github)](https://github.com/jvillagra66-oss)