import 'dart:typed_data';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nucleo_regional_educacao/components/avisos_nre_dropdown.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';

//import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Widget> _painters = <Widget>[];
  late FutureOr<Uint8List> content;
  @override
  void initState() {
    super.initState();
    _painters.add(SvgPicture.asset('assets/images/mapa_parana.svg'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.20,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/logo_parana.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: AvisosNreDropdown(),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("PARANÁ"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: GridView.extent(
                          shrinkWrap: true,
                          maxCrossAxisExtent:
                              MediaQuery.of(context).size.width * 1,
                          children: _painters.toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Launch screen'),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: const Text('legislação'),
                onTap: () {
                  launchUrl(
                      Uri.parse("https://www.educacao.pr.gov.br/Legislacao"));
                },
              ),
              ListTile(
                title: const Text('Site institucional Seed-PR'),
                onTap: () {
                  launchUrl(
                      Uri.parse("https://www.educacao.pr.gov.br/desvio.html"));
                },
              ),
              ListTile(
                title: const Text('Transparência'),
                onTap: () {
                  launchUrl(Uri.parse(
                      "http://www.transparencia.pr.gov.br/pte/informacoes/portalInstitucional/82/3"));
                },
              ),
              ListTile(
                title: const Text('Calendário Escolar'),
                onTap: () async {
                  PDFDocument doc = await PDFDocument.fromAsset(
                      'assets/images/CALENDARIO_2022.pdf');
                  PDFPage? pageOne = await doc.get();
                },
              ),
              ListTile(
                title: const Text('Contracheque'),
                onTap: () {
                  launchUrl(Uri.parse(
                      "http://wwws.portaldoservidor.pr.gov.br/cchequenet/"));
                },
              ),
              ListTile(
                title: const Text('Expresso e-mail'),
                onTap: () {
                  launchUrl(Uri.parse(
                      "https://www.diaadiaeducacao.pr.gov.br/portals/frm_login.php?acesso=1&origem=email"));
                },
              ),
              ListTile(
                title: const Text('Site instituicional Seed-PR'),
                onTap: () {
                  launchUrl(Uri.parse("https://www.educacao.pr.gov.br/"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
