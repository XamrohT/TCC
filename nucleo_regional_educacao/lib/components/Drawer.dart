// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

class PersonalizedDrawer extends StatefulWidget {
  const PersonalizedDrawer();
  @override
  _PersonalizedDrawerState createState() => _PersonalizedDrawerState();
}

class _PersonalizedDrawerState extends State<PersonalizedDrawer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Brasao_do_Parana.png',),
                fit: BoxFit.contain,
              ),
            ),
            child: Text(''),
          ),
          ListTile(
            title: const Text('Pagina Inicial'),
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/', (Route<dynamic> route) => false);
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Legislação'),
            onTap: () {
              launchUrl(Uri.parse("https://www.educacao.pr.gov.br/Legislacao"));
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Site institucional Seed-PR'),
            onTap: () {
              launchUrl(
                  Uri.parse("https://www.educacao.pr.gov.br/desvio.html"));
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Transparência'),
            onTap: () {
              launchUrl(Uri.parse(
                  "http://www.transparencia.pr.gov.br/pte/informacoes/portalInstitucional/82/3"));
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Calendário Escolar'),
            onTap: () async {
              try {
                await launchUrl(
                  Uri.parse(
                      'https://www.educacao.pr.gov.br/sites/default/arquivos_restritos/files/documento/2021-11/CALENDARIO_2022.pdf'),
                  mode: LaunchMode.externalApplication,
                );
              } catch (err) {
              }
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Contracheque'),
            onTap: () {
              launchUrl(Uri.parse(
                  "http://wwws.portaldoservidor.pr.gov.br/cchequenet/"));
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Expresso e-mail'),
            onTap: () {
              launchUrl(Uri.parse(
                  "http://www.diaadiaeducacao.pr.gov.br/portals/frm_login.php?acesso=1&origem=email"));
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Site instituicional Seed-PR'),
            onTap: () {
              launchUrl(Uri.parse("https://www.educacao.pr.gov.br/"));
            },
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 10,
          ),
        ],
      ),
    );
  }
}
