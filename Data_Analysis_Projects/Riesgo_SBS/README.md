# Análisis de riesgo de morosidad de clientes
Proyecto de Data Analytics sobre deudores y su riesgo de morosidad

El objetivo de este proyecto es encontrar los factores que podrían estar relacionados al riesgo de morosidad 

Mayor detalle del procedimiento y análisis en Python en el archivo Riesgo_SBS_Analisis.ipynb

## Estructura y tratamiento de Datos 
###  Archivos
Base de datos : Copia de bbdd_riesgo.xlsx
Listado de Variables : Copia de Variables.xlsx

###  Descripción de datos
Se cuenta con datos de 16 variables y 5000 observaciones

13 variables de tipo numéricas:

- ID	: Identificador
- Mora60	: Indicador mora>60 días en el transcurso de un año luego de haberle otorgado el crédito  (0:No tuvo mora 60, 1:Sí tuvo mora 60)
- Atraso : Número de días de atraso máximo durante los 12 meses antes de la aprobación del crédito.
- Edad	: Edad
- TC : Máxima antigüedad con Tarjeta de crédito en el Sistema Financiero (en meses).
- FECHA_EMPLEO: Fecha ingreso al empleo.
- AHORRO : Número de meses con algún producto Pasivo (ahorro) durante los 12 meses antes de la aprobación del crédito.
- INGRESO : Ingreso mensual.
- LINEA_TC : Monto de Línea de crédito Tarjeta de Crédito en el Sistema Financiero.
- SALDO_DEUDOR : Monto de Saldo deudor promedio total en el Sistema Financiero.
- SCORE : Score con el que fue aprobada la Tarjeta de crédito en el Banco.
- ABONO_PAGO : Número de veces con Abono de Pago de Haberes en el Banco durante los 12 meses antes de la aprobación del crédito.
- RIESGO_SBS : "Máxima clasificación de Riesgos SBS durante los 12 meses antes de la aprobación del crédito (0: Normal, 1:CPP,
 2:Deficiente, 3:Dudoso, 4:Pérdida)."

3 variables de tipo categórica
- TIPOCASA: Situación de la casa. (ALQUILADA,FAMILIAR,OTRAS,PROPIA)
- DEPARTAMENTO : Zona geográfica.
- EDUCACION: Nivel educativo.

### Tratamiento de datos

Se realizó una limpieza de datos mediante busqueda de valores nulos. Luego se realizó el analisis mediante distintos gráficos de barras, dispersión y heatmaps para buscar la correlación entre las variables y la morosidaad

## Insights y conclusiones obtenidas del Análisis

- La edad de las personas y el índice de morosidad están correlacionadas, al parecer a menor edad, la morosidad es mayor

  ![image](https://github.com/user-attachments/assets/3b1d73c3-226c-4854-b340-c78dce561b8a)

- Las personas con educación ténica y básica suelen tener mayor índice de morosidad que los demás
  ![image](https://github.com/user-attachments/assets/50056af6-941a-471d-988a-c906319f4ba0)

- El SCORE y la morosidad están relacionadas directamente, las personas con scores más bajos suelen tener mayor morosidad
  ![image](https://github.com/user-attachments/assets/9265290e-daf6-4d54-a743-facdc61542c2)

- Las personas con menores ingresos presentan, también mayores índices de morosidad.
![image](https://github.com/user-attachments/assets/89d76b7b-077e-4ada-992b-6d15cdf075b9)

### Fuentes de Datos:
Se utilizó el archivo Copia de bbdd_riesgo.xlsx como fuente de datos

