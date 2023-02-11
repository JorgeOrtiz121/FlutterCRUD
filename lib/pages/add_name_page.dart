import 'package:flutter/material.dart';
import 'package:crud/services/firebase_service.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});
  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
          title: const Text('Crear nuevo item'),
          backgroundColor: Color.fromRGBO(44, 221, 28, 0.604),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 800),
                child: Icon(
                  Icons.save,
                  color: Color.fromARGB(255, 255, 255, 255),
                ))
                
          ]),
  
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          children: [
            Text("En el siguiente modulo te permite ingresar una nuevo item a tu lista de tareas"),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese un nuevo item para la lista \n',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                await addPeople(nameController.text).then((_) {
                  Navigator.pop(context);
                });
              },
              child: const Text(" Guardar nuevo item"),
            )
          ],
        ),
      ),
    );
  }
}
