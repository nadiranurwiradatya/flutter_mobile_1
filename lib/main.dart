// lib/main.dart
import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Mobile',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.purple,
      ),
      home: const LoginPage(),
    );
  }
}
