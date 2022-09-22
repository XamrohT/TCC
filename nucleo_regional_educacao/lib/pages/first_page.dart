import 'dart:typed_data';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/Drawer.dart';
import 'package:nucleo_regional_educacao/components/avisos_nre_dropdown.dart';
import 'package:url_launcher/url_launcher.dart';


//import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

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
                              padding: const EdgeInsets.all(8.0),
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
                  children: const [
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
        drawer: const Drawer(child: PersonalizedDrawer()),
      ),
    );
  }

  void printinfo() {}
}
