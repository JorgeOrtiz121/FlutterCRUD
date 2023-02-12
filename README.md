# FlutterCRUD
Integrantes : 
<li />  Manuel Auqui
<li />  Leoni Guambo
<li />  Mayerli Mendez
<li />  Jorge Ortiz
<hr/>
Evaluación flutter

Consiste en implementar un CRUD con flutter que se conecta a firebase.

Funcionalidad (Jorge) 

# CRUD 

**Crar** 

**Visualizar** 

**Editar**

Lo primero que se realiza es importar las herramientas necesarias
![editar1](https://user-images.githubusercontent.com/74840012/218286352-38a3e96d-8491-4b8b-a4f8-48a018ccd7a5.png)

```  
import 'package:flutter/material.dart';
```
Son los paquetes basicos que se utilizan con flutter. 

```
import '../services/firebase_service.dart';
```
Es un servicio que permite interactuar con una base de datos de Firebase.


A continuación, se crea dos clases 
![editar2](https://user-images.githubusercontent.com/74840012/218286357-dd72e63f-3f4d-4965-9883-ffdaca3cc0b2.png)

 
La clase ```"EditNamePage"  ``` es una página widget que extiende la clase ```StatefulWidget``` . La clase ```EditNamePage``` tiene un método ```createState``` que devuelve una instancia de la clase privada ```_EditNamePageState```.

La clase ```_EditNamePageState``` extiende ```State``` y sobreescribe el método ```build```, que define la estructura visual de la página. El método ```build```crea una barra de navegación con un título y un icono de actualización, y un cuerpo que contiene una descripción, un campo de texto para actualizar un elemento, y un botón para confirmar la actualización.

A continuación, se coloca textos informativos para el usuario, mediante componentes de flutter junto a estilos de color, padding y otros. 
 ![editar3](https://user-images.githubusercontent.com/74840012/218286360-3cc692e1-75d2-4040-b9b3-5dc57ce76c41.png)


Después de colocar los textos informativos se encuentra en botón y cuando se presiona el botón ```Actualizar Lista```, se llama a la función ```updatePeople``` del servicio ```firebase_service.dart``` para actualizar el elemento en la base de datos de Firebase. Después de actualizar con éxito, se regresa a la página anterior utilizando la función ```Navigator.pop```.
 ![editar4](https://user-images.githubusercontent.com/74840012/218286369-4e046779-a25a-44ce-94e7-2cb083df0abe.png)


**Eliminar**

<hr/>
Para mayor entendimiento visite el video 
URL: 
