# Análisis y predicción del precio de boletos de avión

Se busca analizar data de aerolíneas sobre vuelos ofrecidos para generar un modelo predicitivo basado en distintos algoritmos de Machine Learning para la predicción del precio de tickets de vuelo.

Los precios de avión están sujetos a muchas variables, los modelos predictivos ayudan a establecer un valor estándar para las aerolíneas y también son usados por plataformas de viaje para establecer alertas de compra e identificar precios fuera de lo esperado.

## Datos

Los datos para el entrenamiento del modelo están almacenados en el archivo Excel Data_Train.xlsx y tienen la siguiente estructura: 10683 observaciones y 11 variables.

Las variables son: 

- Airline : Aerolínea
- Date_of_Journey : Fecha de viaje
- Source : Punto de partida
- Destination : Punto de llegada
- Route	Dep_Time : Ruta de viaje (ej : "BLR → DEL")
- Arrival_Time : Hora de llegada
- Duration : Duración de viaje
- Total_Stops : Paradas
- Additional_Info : Información adicional
- Price : Precio del boleto

Todas las variables están registradas como object con excepción de Price que está como int64

Se cuenta con un archivo para la prueba del modelo Test_Set.xslx

## Procedimiento

### Preparación de Data

Búsqueda y eliminación de valores nulos y repetidos.

Debido a que todas las variables dependientes son de tipo object, se necesita transformarlas en un formato que un algoritmo de machine learning pueda aceptar (numeric, datetime, ..)

Se empezó transformando las variables 'Date_of_Journey','Dep_Time','Arrival_Time' en datetime.

'Date_of_Journey' en formato AAAA-MM-DD se transformó en 3 variables : Journey_day, Journey_month , Journey_year

'Dep_Time','Arrival_Time' en formato 'xx h xx m' transformadas a 2 variables cada una: Dep_Time_hour,	Dep_Time_min, Arrival_Time_hour,	Arrival_Time_min

La variable duration en formato str: 'xx h xx m' se transformó a minutos (int)

## Análisis 

Usando Dep_Time_hour, se analizó cuando es la partida de la mayoría de vuelos

![image](https://github.com/user-attachments/assets/5f335a86-7f34-40ff-8611-f2bdca3fbce8)

La mayoría de vuelos son temprano en la mañana (4am-8am)

Se analizó el impacto de la duración de los vuelos y el número de paradas en el precio de los boletos de avión, obteniendo la siguiente imagen:

![image](https://github.com/user-attachments/assets/5ef5ab74-eca3-44eb-8115-dc7046166b43)

Se observa que a menor duración y a menos número de paradas el boleto es más barato.

### Feature Engineering
Se aplicó las siguiente tecnicas para transformar las variables object en entradas admisibles por el algoritmo de ML

ONE HOT ENCODING : 'Source'
TARGET ENCODING : 'Airline', 'Destination'
LABEL ENCODING : 'Total Stops' ('non-stop': 0, '2 stops':2,'1 stop':1,'3 stops':3, '4 stops':4)

### Modelo Machine Learning
Se entrenó un modelo basado en Random Forest Regressor. Este modelo obtuvo un score en r2 de 0.8 (80%)

### Hypertune Model
Se utilizó el algoritmo de Cross Validation para optimizar el accurcy del modelo a 83%%

