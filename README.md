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

**Crear** 
La clase se llama "AddNamePage" es un widget que extiende de la clase 
"StatefulWidget", lo que significa que la página tiene estado y puede ser actualizada dinámicamente. 

![image](https://user-images.githubusercontent.com/74801652/218286692-fc1d8955-351c-46bb-9609-86cc5a88fd69.png)


El widget "AddNamePage" se construye con una clase interna llamada "_AddNamePageState", la cual extiende la clase "State".

![image](https://user-images.githubusercontent.com/74801652/218286711-0b43a578-511d-4ac6-9b9a-59841c0d7d9a.png)

"build" es llamado cuando se construye el widget y se encarga de crear la interfaz de usuario para la página. El método retorna un objeto "Scaffold", que proporciona una estructura básica para la página

![image](https://user-images.githubusercontent.com/74801652/218286730-642fdcd7-c1fe-4fd0-b7d4-eb05000120bb.png)

La barra de navegación incluye un título para la página y un ícono de guardado.

![image](https://user-images.githubusercontent.com/74801652/218286743-f90b4472-05da-4f86-9670-623dc5f3e8a4.png)

El cuerpo de la página se define como una columna que contiene una etiqueta de texto que explica  la funcionalidad de la página, una caja de texto para ingresar el nuevo item, y un botón  "ElevatedButton" para guardar el item.
 
 Cuando se presiona el botón, se llama la función "addPeople" en la clase "FirebaseService", y si la operación es exitosa, se vuelve a la página
 anterior usando "Navigator.pop(context)".
 
 ![image](https://user-images.githubusercontent.com/74801652/218286760-c82a320b-dfc8-4f10-ac3c-6abe57b8e9d5.png)


**Visualizar** 

**Editar**

Lo primero que se realiza es importar las herramientas necesarias
<center
![editar1](https://user-images.githubusercontent.com/74840012/218286479-d709e471-3d87-41be-947e-060870cfe97e.png)
	<sub>Fig. 1 Importaciones </sub>
/>


La importacion ```import 'package:flutter/material.dart';``` la cual son los paquetes basicos que se utilizan con flutter. 

La importacion```import '../services/firebase_service.dart';```la cual es un servicio que permite interactuar con una base de datos de Firebase.


A continuación, se crea dos clases 
<center
![editar2](https://user-images.githubusercontent.com/74840012/218286484-ebf8890f-af89-45ca-822d-8c2cc5ef4603.png)
	<sub>Fig. 2 Clases </sub>
/>



La clase ```"EditNamePage"  ``` es una página widget que extiende la clase ```StatefulWidget``` . La clase ```EditNamePage``` tiene un método ```createState``` que devuelve una instancia de la clase privada ```_EditNamePageState```.

La clase ```_EditNamePageState``` extiende ```State``` y sobreescribe el método ```build```, que define la estructura visual de la página. El método ```build```crea una barra de navegación con un título y un icono de actualización, y un cuerpo que contiene una descripción, un campo de texto para actualizar un elemento, y un botón para confirmar la actualización.

A continuación, se coloca textos informativos para el usuario, mediante componentes de flutter junto a estilos de color, padding y otros. 
<center
![editar3](https://user-images.githubusercontent.com/74840012/218286487-a331ead2-d56b-44f4-86d1-9ff082d97d11.png)
	<sub>Fig. 3 Textos </sub>  
/>


Después de colocar los textos informativos se encuentra en botón y cuando se presiona el botón ```Actualizar Lista```, se llama a la función ```updatePeople``` del servicio ```firebase_service.dart``` para actualizar el elemento en la base de datos de Firebase. Después de actualizar con éxito, se regresa a la página anterior utilizando la función ```Navigator.pop```.

<center
![editar4](https://user-images.githubusercontent.com/74840012/218286491-6b8f3f38-a70b-4d85-9f06-c50711a851f6.png)
	<sub>Fig. 4 Bóton Actualizar</sub>      
/>

**Eliminar**

<hr/>
Para mayor entendimiento visite el video 
URL: 
