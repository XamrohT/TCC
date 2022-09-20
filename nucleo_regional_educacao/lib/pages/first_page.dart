import 'dart:typed_data';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nucleo_regional_educacao/components/avisos_nre_dropdown.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:web_scraper/web_scraper.dart';

//import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late FutureOr<Uint8List> content;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
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
                    Expanded(
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image:
                                  AssetImage('assets/images/logo_parana.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AvisosNreDropdown(),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Colors.grey[200],
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("$size"),
                            ),
                            Center(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 1,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        'assets/images/mapa_parana.png'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      child: Text("Ultimas Notícias"),
                    ),
                  ],
                ),
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
                  try {
                    await launchUrl(
                      Uri.parse(
                          'https://www.educacao.pr.gov.br/sites/default/arquivos_restritos/files/documento/2021-11/CALENDARIO_2022.pdf'),
                      mode: LaunchMode.externalApplication,
                    );
                  } catch (err) {
                    debugPrint('Something went wrong');
                  }
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
                      "http://www.diaadiaeducacao.pr.gov.br/portals/frm_login.php?acesso=1&origem=email"));
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

  void printinfo() {}
}
