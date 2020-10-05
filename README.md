## ProgrammingAssignment3
Repositorio para Programming Assignment 3 del curso "Getting and Cleaning Data" de Coursera

## Propósito

El propósito de este proyecto es demostrar su capacidad para recoger, trabajar y limpiar un conjunto de datos. El objetivo es preparar datos ordenados que puedan ser utilizados para un análisis posterior. Serás calificado por tus compañeros en una serie de preguntas de sí/no relacionadas con el proyecto. Se les pedirá que se presenten: 1) un conjunto de datos ordenado como se describe a continuación, 2) un enlace a un repositorio Github con tu guión para realizar el análisis, y 3) un libro de códigos que describa las variables, los datos y cualquier transformación o trabajo que hayas realizado para limpiar los datos llamado CodeBook.md. También deberías incluir un README.md en el repositorio con tus scripts. Este repositorio explica cómo funcionan todos los guiones y cómo están conectados.

Una de las áreas más emocionantes en toda la ciencia de los datos en este momento es la computación vestible - ver por ejemplo este artículo . Compañías como Fitbit, Nike y Jawbone Up se apresuran a desarrollar los algoritmos más avanzados para atraer nuevos usuarios. Los datos enlazados desde el sitio web del curso representan los datos recogidos de los acelerómetros del smartphone Samsung Galaxy S. Una descripción completa está disponible en el sitio donde se obtuvieron los datos:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Aquí están los datos del proyecto:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Debes crear un script R llamado run_analysis.R que haga lo siguiente.

1. Fusiona el entrenamiento y los juegos de pruebas para crear un conjunto de datos.
2. 3. Extrae sólo las medidas de la media y la desviación estándar de cada medida.
3. 3. Utiliza nombres descriptivos de las actividades para nombrar las actividades del conjunto de datos
4. Etiqueta adecuadamente el conjunto de datos con nombres descriptivos de las variables.
5. A partir del conjunto de datos del paso 4, crea un segundo conjunto de datos ordenado e independiente con el promedio de cada variable para cada actividad y cada sujeto.

## Librerías a utilizar
data.table
reshape2 (dependiente de plyr)

## Archivos en el repositorio
run_analysis.R: archivo que contiene el script para generar el archivo tiny_data.txt
tiny_data.txt: archivo generado de acuerdo a lo solicitado
CodeBook.md: archivo con el resumen de variables existentes en el archivo tiny_data.txt
