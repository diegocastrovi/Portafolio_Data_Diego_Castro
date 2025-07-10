# Predicción de seguridad de contraseña

Proyecto para predecir que tan segura es una contraseña, código en el archivo: NLP_Password_strenght_prediction.ipynb

## Datos
Datos en el archivo password_data.sqlite, Tabla con campos : Index, Password, Strenght

## Preprocesamiento de datos 

Se identificaron y eliminaron los datos nulos, duplicados


## Feature Engineering

Se busca generar features útiles para la predicción de la seguridad de la contraseña mediante un algoritmo ML, es decir, features numméricos

Se crearon 'lowercase_freq', 'uppercase_freq' , 'numeric_freq', 'special_char_freq'  todos representan la frecuencia en la que aparecen cada tipo de carácter en el string de la contraseña

## Análisis

Se analizó la longitud de la contraseña; la presencia de caracteres numéricos, Mayúsculas, especiales, etc

![image](https://github.com/user-attachments/assets/6649586e-f8be-41a0-b187-33b60dd535da)
La longitud es un feature que tiene gran influencia en la seguridad de la contraseña, a menor longitud la seguridad es menor

![image](https://github.com/user-attachments/assets/58a33b74-cb95-4054-9151-ee5b7b2ead30)
Se observa que las contraseñas más seguras tiene bajo lowercase_freq (bajo porcentaje de minúsculas)

## TF-IDF

es una métrica utilizada para evaluar la relevancia de una palabra en un documento dentro de un conjunto de documentos; 

en este caso lo usaremos para evaluar la relevancia de un carácter en el conjunto de todas las contraseñas, así cada contraseña tendrá una representación numerica (array)

Por ejemplo, la contraseña 'leevi637e' tiene la siguiente representación

![image](https://github.com/user-attachments/assets/1ae6284b-5b64-43ae-a3ca-8a332368611f)

y se modifica el dataframe para conseguir esta estructura 
![image](https://github.com/user-attachments/assets/7cfea56d-f16d-472a-a4fe-47ddf7099515)

## Machine Learning 
Se implementó un algoritmo de Machine Learning de Regresión Logística debido a que es un problema de clasificación, 

especificamente Multinomial, ya que se busca clasificar en varias clases excluyentes (0 = 'poco segura', 1 = 'medio segura', 2 = 'muy segura')

Se obtuvo un modelo con accuracy de 79%

