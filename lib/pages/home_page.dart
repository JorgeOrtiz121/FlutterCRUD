import 'package:crud/pages/list_page.dart';
import 'package:crud/pages/upload_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const PersonList(),
    const UploadPage(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi lista de Tareas ',textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),),
          backgroundColor: Color.fromARGB(154, 44, 221, 28),
           actions: <Widget> [
          Padding(padding: EdgeInsets.only(right: 1100),
          child:  Icon( Icons.list, color: Color.fromARGB(255, 255, 255, 255),)) ]
        ),
        
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
      
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Lista',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add),
              label: 'Subir Imagen',
            ),
          ],
        ));
  }
}
