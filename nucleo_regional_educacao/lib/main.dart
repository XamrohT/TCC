import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/pages/first_page.dart';
import 'package:nucleo_regional_educacao/pages/municipios_avisos/apucarana_avisos.dart';
import 'package:nucleo_regional_educacao/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nucleo Regional de Educação',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/apucarana': (context) => const SecondScreen(),
        '/apucarana/apucarana_avisos': (context) => Apucarana_avisos(),
      },
    );
  }
}
