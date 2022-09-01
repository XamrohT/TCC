import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/pages/first_page.dart';
import 'package:nucleo_regional_educacao/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}
