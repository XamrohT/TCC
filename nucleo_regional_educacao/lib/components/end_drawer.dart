import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer(
      this.page1,
      this.page2,
      this.page3,
      this.page4,
      this.page5,
      this.page6,
      this.page7,
      this.page8,
      this.page9,
      this.page10,
      this.page11,
      this.page12,
      this.page13,
      this.page14,
      this.page15,
      this.page16,
      this.page17);
  final String page1;
  final String page2;
  final String page3;
  final String page4;
  final String page5;
  final String page6;
  final String page7;
  final String page8;
  final String page9;
  final String page10;
  final String page11;
  final String page12;
  final String page13;
  final String page14;
  final String page15;
  final String page16;
  final String page17;

  @override
  _EndDrawerState createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Chefia'),
            onTap: () {
              Navigator.pushNamed(context, widget.page1);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Colégios e Escolas'),
            onTap: () {
              Navigator.pushNamed(context, widget.page2);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Documentação Escolar'),
            onTap: () {
              Navigator.pushNamed(context, widget.page3);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Edificações Escolares'),
            onTap: () async {
              Navigator.pushNamed(context, widget.page4);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Educação Básica'),
            onTap: () {
              Navigator.pushNamed(context, widget.page5);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Estrutura e Funcionamento'),
            onTap: () {
              Navigator.pushNamed(context, widget.page6);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Formação'),
            onTap: () {
              Navigator.pushNamed(context, widget.page7);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Gestão Escolar'),
            onTap: () {
              Navigator.pushNamed(context, widget.page8);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Legislação Escolar'),
            onTap: () {
              Navigator.pushNamed(context, widget.page9);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Logística'),
            onTap: () {
              Navigator.pushNamed(context, widget.page10);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Ouvidoria'),
            onTap: () {
              Navigator.pushNamed(context, widget.page11);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Protocolo'),
            onTap: () {
              Navigator.pushNamed(context, widget.page12);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Recursos Descentralizados'),
            onTap: () {
              Navigator.pushNamed(context, widget.page13);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Recursos Humanos'),
            onTap: () {
              Navigator.pushNamed(context, widget.page14);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Registro Escolar'),
            onTap: () {
              Navigator.pushNamed(context, widget.page15);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Tecnologia Educacional'),
            onTap: () {
              Navigator.pushNamed(context, widget.page16);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Telefones'),
            onTap: () {
              Navigator.pushNamed(context, widget.page17);
            },
          ),
        ],
      ),
    );
  }
}
