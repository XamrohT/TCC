import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/pages/home_page.dart';
import 'package:nucleo_regional_educacao/pages/municipios_avisos/apucarana_avisos.dart';
import 'package:nucleo_regional_educacao/pages/municipios_chefia/apucarana_chefia.dart';
import 'package:nucleo_regional_educacao/pages/municipios_pages/apucarana.dart';

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
        '/': (context) => HomePage(),
        '/apucarana': (context) => const Apucarana(),
        '/apucarana/apucarana_avisos': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_chefia': (context) => Apucarana_chefia(),
        '/apucarana/apucarana_colegios_e_escolas': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_documentacao_escolar': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_edificacoes_escolares': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_educacao': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_estrutura': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_estrutura_Funcionamento': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_gestao_escolar': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_legislacao_escolar': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_logistica': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_ouvidoria': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_protocolo': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_recursos_descentralizados': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_recursos_humanos': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_registro_escolar': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_tecnologia': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_teleones': (context) => Apucarana_avisos(),
      },
    );
  }
}
