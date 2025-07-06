# Ventas de dispositivos móviles
Proyecto de Data Analytics sobre la venta de celulares realizadas por una compañía telefónica.

El objetivo de este proyecto es revelar insights de valor a partir de los datos de ventas de cierta compañía telefónica

Mayor detalle del procedimiento y análisis en Python en el archivo Analisis_data_venta_moviles.ipynb

## Estructura y tratamiento de Datos 
###  Archivos
Archivo en excel Copia de 1. Base_proyecto.xlsx"

###  Descripción de datos
Se tienen 19 variables con 19552 observaciones, de estas variables se tienen:

7 variables de tipo numéricas:

Periodo	: Periodo cuando se hizo la venta, Formato : AñoMes (202110)
- Dia	:Día de la compra
- Ingreso	: Ganancias por la Venta
- Costo : Precio de costo del celular para el proveedor
- Margen	:  Ganancias por las ventas menos el costo
- Rentabilidad : Margen porcentual respecto al Costo

12 variables de tipo categórica

-  EquipoSim : Variable con entrada única (equipo)
-  Tipo	: Variable con entrada única (Celular)
-  Subtipo	: Smartpone o Feature
-  Marca : 15 Marcas distintas
-  Gama	: 5 Gamas distintas
-  Tipo Venta	: Porta=Portabilidad o VR=VentaRegular
-  CanalVenta	: Medio de Venta
-  CadenaDealer	
-  Departamento	
-  Canal : Retail, Islas, Tiendas u otros
-  SubCanal	
-  Cluster : Clúster de compradores

### Tratamiento de datos

Se relizó una limpieza de datos, encontrando y eliminando valores nulos en las columnas CadenaDealer, Departamento y Clúster. También se añadió datos en las columnas de Margen y rentabilidad mediante fórmulas a partir de los datos de costo e ingreso.

## Insights y conclusiones obtenidas del Análisis

- Como primera conclusión podemos ver que en la empresa la mayor parte de las ventas se hacen por medio de las grandes tiendas las cuales a su vez tiene el mayor costo. Adicional a la información de venta se observa que el tipo de venta que genera más ingresos es PORTABILIDAD.

![image](https://github.com/user-attachments/assets/c6cf0bb9-2436-48a9-8514-15847ed60671) ![image](https://github.com/user-attachments/assets/d2d7374f-c8d7-46da-a60a-adb405398745)


- Se observa que la concentración de la ventas de la empresa se encuentra entre 0 a 1000 soles, concluyendo que el mercado en donde se encuentran adquiere en su mayoria equipos entre estos precios, siendo los de gama baja, de entrada y media los más vendido.

  ![image](https://github.com/user-attachments/assets/8b2ccb68-305b-424b-80d7-c7e131d1b3fc)


- Se observa que Motorola es la segunda de marca con mayor ingreso, pero, a su vez tienen los costos más elevados, lo que genera que esta marca tenga un margen negativo y no sea rentable para la empresa, al ser una marca que a pesar de tener altos ingresos tiene un costo tan elevado que genera perdidas se concluye que lo ideal es que se deje de vender esta marca o adquirir equipos de gama más baja.

![image](https://github.com/user-attachments/assets/1ff543dc-903f-4076-8b9a-2389813c162c)

![image](https://github.com/user-attachments/assets/cb9d06ec-0811-435e-bc06-e9810416cc50)

![image](https://github.com/user-attachments/assets/236a7e06-7ea1-4aa6-9145-1285254132bd)  


- Observamos que la marca más vendida es Bmobile, la cual a su vez es la que tiene el mejor márgen y la segunda más rentable, y al tener un costo bajo en promedio de la demás se concluye que es la marca a la que hay que seguir dandole el enfoque para generar ganancias.

![image](https://github.com/user-attachments/assets/f69100a7-cd03-46e2-b9cc-aa13a052cc22)
![image](https://github.com/user-attachments/assets/16720360-002a-48f6-904e-0cb42efa2c77)


### Fuentes de Datos:
Se utilizó el archivo Copia de 1. Base_proyecto.xlsx como fuente de datos
