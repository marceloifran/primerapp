import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Para íconos de Cupertino
import 'package:curved_navigation_bar/curved_navigation_bar.dart'; // Para barra de navegación curva

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colorful Navigation Bar',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Índice de la pestaña seleccionada

  // Colores para cada pestaña
  final List<Color> _colors = [
    Colors.blue,
    Colors.green,
    Colors.orange,
  ];

  // Lista de widgets para cada pestaña
  final List<Widget> _pages = [
    const Center(child: Text("Home", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Search", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _colors[_selectedIndex], // Fondo del color de la pestaña seleccionada
      appBar: AppBar(
        title: const Text('Colorful Navigation Example'),
        backgroundColor: _colors[_selectedIndex], // Color de la AppBar
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search),
            onPressed: () {
              print("Search button pressed");
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex], // Contenido dinámico según la pestaña
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: _colors[_selectedIndex], // Fondo detrás de la barra
        color: Colors.white, // Color de la barra
        buttonBackgroundColor:
            _colors[_selectedIndex], // Color del botón central
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(CupertinoIcons.home, size: 30, color: Colors.blue), // Ícono azul
          Icon(CupertinoIcons.search,
              size: 30, color: Colors.green), // Ícono verde
          Icon(CupertinoIcons.person,
              size: 30, color: Colors.orange), // Ícono naranja
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating Action Button pressed");
        },
        backgroundColor: _colors[_selectedIndex], // Color según la pestaña
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}
