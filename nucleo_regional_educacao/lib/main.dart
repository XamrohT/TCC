import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/pages/home_page.dart';
import 'package:nucleo_regional_educacao/pages/municipios_avisos/apucarana_avisos.dart';
import 'package:nucleo_regional_educacao/pages/municipios_chefia/apucarana_chefia.dart';
import 'package:nucleo_regional_educacao/pages/municipios_documentacao_escolar/municipios_documentacao_escolar.dart';
import 'package:nucleo_regional_educacao/pages/municipios_estrutura/municipios_estrutura.dart';
import 'package:nucleo_regional_educacao/pages/municipios_formacao_continuada/municipios_formacao_continuada.dart';
import 'package:nucleo_regional_educacao/pages/municipios_gestao_escolar/municipios_gestao_escolar.dart';
import 'package:nucleo_regional_educacao/pages/municipios_legislacao_escolar/municipios_legislacao_escolar.dart';
import 'package:nucleo_regional_educacao/pages/municipios_logistica/municipios_logistica.dart';
import 'package:nucleo_regional_educacao/pages/municipios_ouvidoria/municipios_ouvidoria.dart';
import 'package:nucleo_regional_educacao/pages/municipios_pages/apucarana.dart';
import 'package:nucleo_regional_educacao/pages/municipios_protocolo/municipios_protocolo.dart';

import 'pages/municipios_edificacoes_escolares/municipios_edificacoes_escolares.dart';

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
        '/': (context) => const HomePage(),
        '/apucarana': (context) => const Apucarana(),
        '/apucarana/apucarana_avisos': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_chefia': (context) => const Apucarana_chefia(),
        '/apucarana/apucarana_colegios_e_escolas': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_documentacao_escolar': (context) => const Apucarana_documentacao_escolar(),
        '/apucarana/apucarana_edificacoes_escolares': (context) => const Apucarana_edificacoes_escolares(),
        '/apucarana/apucarana_educacao': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_estrutura': (context) => const Apucarana_estrutura(),
        '/apucarana/apucarana_formacao_continuada': (context) => const Apucarana_formacao_continuada(),
        '/apucarana/apucarana_gestao_escolar': (context) => const Apucarana_gestao_escolar(),
        '/apucarana/apucarana_legislacao_escolar': (context) => const Apucarana_Legislacao_escolar(),
        '/apucarana/apucarana_logistica': (context) => const Apucarana_logistica(),
        '/apucarana/apucarana_ouvidoria': (context) => Apucarana_ouvidoria(),
        '/apucarana/apucarana_protocolo': (context) => Apucarana_protocolo(),
        '/apucarana/apucarana_recursos_descentralizados': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_recursos_humanos': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_registro_escolar': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_tecnologia': (context) => Apucarana_avisos(),
        '/apucarana/apucarana_telefones': (context) => Apucarana_avisos(),
      },
    );
  }
}
