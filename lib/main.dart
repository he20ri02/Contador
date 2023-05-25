//import 'package:contador/pages/home_page.dart';
import 'package:contador/pages/login_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //quitar la etiqueta de debugger
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginPage(), // en esta parte se manda llamar la pagina home_page
    );
  }
}