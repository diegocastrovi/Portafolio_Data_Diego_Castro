# Proyecto de Análisis de Datos -Análisis de Ventas Online— Power BI 
## (english version below)

Dashboard interactivo desarrollado en Power BI enfocado en el análisis de indicadores de ventas, rentabilidad y comportamiento transaccional de clientes.

![alt text](https://github.com/diegocastrovi/Portafolio_Data_Diego_Castro/blob/main/Data_Analysis_Projects/POWER_BI_Online_Sales_Analysis/Dashboard_Online_sales.JPG)

## Descripción

Este proyecto consiste en la creación de un dashboard de análisis de ventas online relizadas en un año. Permite a los usuarios visualizar de forma dinámica los principales KPI's, realizar análisis comparativos y obtener insights clave para la toma de decisiones comerciales.


## Indicadores Clave Incluidos
- Distribución geográfica de ventas (Ventas por Ciudad).
- Total de ventas por mes y categoría de producto.
- Rentabilidad mensual y acumulada.
- Total de ventas por Métodos de pago.
- Comparativo de Ingresos y Rendimiento mensuales.

## Fuente de Datos
El conjunto de datos utilizado para este dashboard fue obtenido de Kaggle, cuenta con dos archivos csv: Details.csv y Orders.csv.
Se realizó el ETL usando Power Query.

## Herramientas Utilizadas

- Power BI
- DAX
- Power Query

## Gráficos
Incluye visualizaciones como:
- Gráficos de barras, columnas y líneas.
- KPI cards.
- Segmentadores de año, producto y cliente.
- Tablas dinámicas con filtros.

## Filtros de Segmentación definidos
Se definieron 3 filtros de segmentación principales en el dashboard:
- Etapa de la semana : Segmentación según si la venta se realizó durante los dias laborales o  el fin de semana
- Categoría : Según la categoría del producto de comprado, puede ser Clothing, Electronic o Furniture
- Fecha : Datos entre dos fechas definidas del año 2018

# Insights

- La mayoría de compradores son de las ciudades de Indore (22.3%) y Mumbai (21%)
- La categoría Clothing es la que tiene más ventas (393 del total 500)
- Las 3 subcategorías más vendidas fueron 'Stole', 'Saree', 'Hankerchief', estos son prendas de vestir tradicionales de uso extensivo en la India
- La mayoría de Personas prefieren realizar el pago mediante COD 
- Durante el periodo de Mayo a Septiembre la empresa presentó un nivel bajo de Ventas, con pérdidas en los meses Mayo, Julio y Septiembre.

## Autor

Desarrollado por **Diego Castro Villanueva**  

## Notas

Proyecto desarrollado como práctica aplicada de Power BI para análisis comercial. 100% adaptable a bases de datos reales o simuladas en SQL Server u otras fuentes de datos.



//English version//

# Data Analysis Project — Power BI

Interactive dashboard developed in Power BI, focused on analyzing sales, profitability, and customer transaction behavior indicators.

## Description
This project involves the creation of a dashboard for analyzing online sales conducted over the course of a year. It allows users to dynamically visualize key KPIs, perform comparative analyses, and gain valuable insights for business decision-making.

## Key Metrics Included

-Geographical distribution of sales (Sales by City)
-Total sales by month and product category
-Monthly and cumulative profitability
-Total sales by payment methods
-Comparative analysis of monthly revenue and performance

-## Data Source
The dataset used for this dashboard was obtained from Kaggle and includes two CSV files: Details.csv and Orders.csv.
ETL processes were carried out using Power Query.

## Tools Used
-Power BI
-DAX
-Power Query

## Visualizations
The dashboard includes:

- Bar, column, and line charts
- KPI cards
- Year, product, and customer slicers
- Dynamic tables with filters

## Defined Slicers
Three main slicers were created in the dashboard:

- Stage of the Week: Segmentation based on whether the sale was made on weekdays or weekends
- Category: Based on product category — Clothing, Electronic, or Furniture
- Date: Data filtered between two defined dates in 2018

# Insights
- Most buyers are from the cities of Indore (22.3%) and Mumbai (21%)
- The Clothing category has the highest number of sales (393 out of 500 total transactions)
- The three top-selling subcategories were Stole, Saree, and Hankerchief, which are traditional clothing items widely used in India
- Most customers prefer paying via Cash on Delivery (COD)
- Between May and September, the company experienced low sales levels, with losses reported in May, July, and September

## Author

Developed by **Diego Castro Villanueva**  

## Notes

Project created as an applied Power BI practice for commercial data analysis. Fully adaptable to real or simulated datasets from SQL Server or other data sources.

