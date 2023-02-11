import 'package:flutter/material.dart';

import '../services/firebase_service.dart';
// import 'package:crud/services/firebase_service.dart';

class EditNamePage extends StatefulWidget {
  const EditNamePage({super.key});
  @override
  State<EditNamePage> createState() => _EditNamePageState();
}

class _EditNamePageState extends State<EditNamePage> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    nameController.text = arguments['name'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Actualizar lista de tareas'),
         backgroundColor: Color.fromRGBO(44, 221, 28, 0.604),
         actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 750),
                child: Icon(
                  Icons.update,
                  color: Color.fromARGB(255, 255, 255, 255),
                ))
                
          ]
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text("En el siguiente modulo te permite editar un item a tu lista de tareas"),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Actualizar lista',
              ),
            ),
            Text(
              arguments['uid'],
              style: const TextStyle(fontSize: 10),
            ),
             SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () async {
                  await updatePeople(arguments['uid'], nameController.text)
                      .then((_) {
                    Navigator.pop(context);
                  });
                },
                child: const Text("Actualizar Lista"))
          ],
        ),
      ),
    );
  }
}
