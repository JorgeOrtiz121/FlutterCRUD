# FlutterCRUD
Integrantes : 
<li />  Manuel Auqui
<li />  Leoni Guambo
<li />  Mayerli Mendez
<li />  Jorge Ortiz
<hr/>
Evaluación flutter

Consiste en implementar un CRUD con flutter que se conecta a firebase.
Para la creacion de la coenxion debemos utilizar 4 comanods importantes que son: npm install -g firebase-tools, firebase login, dart pub global activate flutterfire_cli, flutterfire configure donde nos pedira un loggeo con nuestras cuentas de google a firebase y la aceptacion de terminos. En el ultimo comando nos pedira a que tipo de aplicacion de firebase se coenctara flutter. Y finalmente se creara una carptea automatica con las credenciales automaticas firebase_options.dart donde contiene las credenciales para correr en android, web e ios.
![image](https://github.com/JorgeOrtiz121/Imagenes/blob/main/imagen_2023-02-12_094831736.png)


Funcionalidad (Jorge) 
Se puede presentar la funcionalidad principal de la app de una lista de tareas. para visualizar toda la uncionalidad. Por favor revisar el video de Youtube.
![image](https://github.com/JorgeOrtiz121/Imagenes/blob/main/imagen_2023-02-12_095516246.png)

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
Lo primero que se podra visualizar es que se usa un FutureBuilder esto es porque este widget nos ayuda con la ocntruccion de listas y de eventos que se ha recopilado en un Statesful. ListView sera el widget que nos desplegara toda la informacion que traera de Firebase a nuestra app donde snapchot.data es la variable donde contiene la lista de datos
![image](https://github.com/JorgeOrtiz121/Imagenes/blob/main/Captura11.PNG)

**Editar**

Lo primero que se realiza es importar las herramientas necesarias

![editar1](https://user-images.githubusercontent.com/74840012/218286479-d709e471-3d87-41be-947e-060870cfe97e.png)

<sub>Fig. 1 Importaciones </sub>

La importacion ```import 'package:flutter/material.dart';``` la cual son los paquetes basicos que se utilizan con flutter. 

La importacion```import '../services/firebase_service.dart';```la cual es un servicio que permite interactuar con una base de datos de Firebase.

A continuación, se crea dos clases 

![editar2](https://user-images.githubusercontent.com/74840012/218286484-ebf8890f-af89-45ca-822d-8c2cc5ef4603.png)

<sub>Fig. 2 Clases </sub>

La clase ```"EditNamePage"  ``` es una página widget que extiende la clase ```StatefulWidget``` . La clase ```EditNamePage``` tiene un método ```createState``` que devuelve una instancia de la clase privada ```_EditNamePageState```.

La clase ```_EditNamePageState``` extiende ```State``` y sobreescribe el método ```build```, que define la estructura visual de la página. El método ```build```crea una barra de navegación con un título y un icono de actualización, y un cuerpo que contiene una descripción, un campo de texto para actualizar un elemento, y un botón para confirmar la actualización.

A continuación, se encuentra la barra de navegación incluye un título para la página y un ícono.

![editar3](https://user-images.githubusercontent.com/74840012/218287151-120e742e-059e-4f45-bf88-e6e7dca76cd9.png)

<sub>Fig. 3 Barra de navegación </sub>  

Ahora de encuentra el input en donde se actualiza el dato.
![editar4 1](https://user-images.githubusercontent.com/74840012/218287218-17276155-ffab-4d97-8088-81da2e2e8cfe.png)

<sub>Fig. 4 Input del dato a actualizar. </sub>  

Después se encuentra en botón y cuando se presiona el botón ```Actualizar Lista```, se llama a la función ```updatePeople``` del servicio ```firebase_service.dart``` para actualizar el elemento en la base de datos de Firebase. Después de actualizar con éxito, se regresa a la página anterior utilizando la función ```Navigator.pop```.

![editar4](https://user-images.githubusercontent.com/74840012/218286491-6b8f3f38-a70b-4d85-9f06-c50711a851f6.png)

<sub>Fig. 4 Bóton Actualizar</sub> 
	
**Eliminar**
Para eliminar se usara una un widget Dismiable donde esto es una funcionalidad de arrastre tipo boton donde tendra una fucnionalidad que es OnDismissed donde tendra una dirreccion y la funcionalidad de una funcion asyncrona para elmetodo de eliminar  por medio de la informacion del objeto de los ladtos de una lista con su id y la fucnion removeAt donde por medio del index nos ayudara a elimianr un objeto especifico de Firebase en la app
 ![image](https://github.com/JorgeOrtiz121/Imagenes/blob/main/imagen_2023-02-12_091619683.png)


<hr/>
Para mayor entendimiento visite el video 
URL: https://youtu.be/TJqyD_sl-zY
