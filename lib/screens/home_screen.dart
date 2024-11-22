import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Color> _colors = [Colors.blue, Colors.green, Colors.orange];
  final List<Widget> _pages = [
    const Center(child: Text("Home", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Search", style: TextStyle(fontSize: 24))),
    const Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors[_selectedIndex],
      appBar: AppBar(
        title: const Text('Colorful Navigation Example'),
        backgroundColor: _colors[_selectedIndex],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: _colors[_selectedIndex],
        color: Colors.white,
        buttonBackgroundColor: _colors[_selectedIndex],
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(CupertinoIcons.home, size: 30, color: Colors.blue),
          Icon(CupertinoIcons.search, size: 30, color: Colors.green),
          Icon(CupertinoIcons.person, size: 30, color: Colors.orange),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
