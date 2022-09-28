import 'dart:typed_data';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/Drawer.dart';
import 'package:nucleo_regional_educacao/components/avisos_nre_dropdown.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Material(
                elevation: 4,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 9,
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'NÚCLEOS REGIONAIS DE EDUCAÇÃO',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 12, 8, 12),
                      child: AvisosNreDropdown(),
                    ),
                    Material(
                      elevation: 2,
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.height / 2.2,
                        child: Center(
                          child: Column(
                            children: [
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
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 20,
                      endIndent: 10,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 8, 8, 0),
                    child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        child: Text("Ultimas Notícias:")),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                      child: Text('Eleições 2022',
                          style: TextStyle(color: Colors.orange,fontSize: 12)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        drawer: const Drawer(child: PersonalizedDrawer()),
      ),
    );
  }

  void printinfo() {}
}
