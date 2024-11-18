import 'package:flutter/material.dart';
import 'package:primerapp/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //es para sacar el banner de debug
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
