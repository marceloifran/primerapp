import 'package:flutter/material.dart';
import 'package:primerapp/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register App',
      home: const LoginScreen(), // Pantalla inicial
    );
  }
}
