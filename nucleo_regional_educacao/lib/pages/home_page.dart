import 'dart:typed_data';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/drawer.dart';
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
        body: SingleChildScrollView(
                  child: Center(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        'assets/images/logo_parana.png'),
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
                        child: SizedBox(
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
                        endIndent: 20,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 8, 8, 0),
                      child: SizedBox(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          child: Text("Ultimas Notícias:")),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: Text('Eleições 2022',
                            style: TextStyle(color: Colors.orange, fontSize: 12)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: Text('Período Eleitoral',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                          child: Text('Em razão da legislação eleitoral, o histórico de notícias de www.nre.seed.pr.gov.br ficará indisponível até que o Tribunal Regional Eleitoral (TRE) oficialize o término das Eleições 2022',
                             ),
                        ),
                    ),
                  ],
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Material(
                        color: Colors.grey[200],
                        child: Container(
                          child: MediaQuery.of(context).size.width > 600
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text(
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              "Secretaria da Educação do Paraná"),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text(
                                              "Av. Água Verde, 2140 - Vila Izabel"),
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                                "80240-900 - Curitiba - PR -"),
                                            const Icon(
                                              Icons.place,
                                              color: Colors.red,
                                              size: 20.0,
                                              semanticLabel:
                                                  'Shows Apucarana Localization',
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                launchUrl(Uri.parse(
                                                    "https://www.google.com/maps/place/Av.+%C3%81gua+Verde,+2140+-+%C3%81gua+Verde,+Curitiba+-+PR,+80240-070/@-25.4538165,-49.2926591,17z/data=!3m1!4b1!4m5!3m4!1s0x94dce3836bfcf0a9:0xddf65733c4d6bdf5!8m2!3d-25.4538165!4d-49.2926591"));
                                              },
                                              child: const Text('Localização'),
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text("41 3340-1500"),
                                        ),
                                      ],
                                    ),
                                    const VerticalDivider(
                                      color: Colors.black,
                                      thickness: 3,
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text(
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              "instituto Paranaense de Desenvolvimento \nEducacional Fundepar"),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text(
                                              "Av. Água Verde, 2140 - Vila Izabel"),
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                                "80240-900 - Curitiba - PR -"),
                                            const Icon(
                                              Icons.place,
                                              color: Colors.red,
                                              size: 20.0,
                                              semanticLabel:
                                                  'Shows Apucarana Localization',
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                launchUrl(Uri.parse(
                                                    "https://www.google.com/maps?q=Rua+dos+Funcion%C3%A1rios,+1323+-+Cabral+80035-050+Curitiba+PR&hl=pt-BR&ie=UTF8&ll=-25.409342,-49.249048&spn=0.011358,0.021651&sll=-25.45403,-49.292382&sspn=0.011354,0.021651&z=16&iwloc=r1"));
                                              },
                                              child: const Text('Localização'),
                                            ),
                                          ],
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            launchUrl(Uri.parse(
                                                "https://www.fundepar.pr.gov.br/Formulario/Contato"));
                                          },
                                          child: const Text('Telefones'),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text(
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              "Secretaria da Educação do Paraná"),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text(
                                              "Av. Água Verde, 2140 - Vila Izabel"),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                                "80240-900 - Curitiba - PR -"),
                                            const Icon(
                                              Icons.place,
                                              color: Colors.red,
                                              size: 20.0,
                                              semanticLabel:
                                                  'Shows Apucarana Localization',
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                launchUrl(Uri.parse(
                                                    "https://www.google.com/maps/place/Av.+%C3%81gua+Verde,+2140+-+%C3%81gua+Verde,+Curitiba+-+PR,+80240-070/@-25.4538165,-49.2926591,17z/data=!3m1!4b1!4m5!3m4!1s0x94dce3836bfcf0a9:0xddf65733c4d6bdf5!8m2!3d-25.4538165!4d-49.2926591"));
                                              },
                                              child: const Text('Localização'),
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text("41 3340-1500"),
                                        ),
                                      ],
                                    ),
                                    const VerticalDivider(
                                      color: Colors.black,
                                      thickness: 3,
                                      width: 20,
                                    ),
                                    const Divider(
                                        indent: 20,
                                        endIndent: 10,
                                        color: Colors.black),
                                    Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text(
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              "instituto Paranaense de Desenvolvimento \n"),
                                        ),
                                        Text(
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            "Educacional Fundepar"),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12.0),
                                          child: Text(
                                              "Av. Água Verde, 2140 - Vila Izabel"),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                                "80240-900 - Curitiba - PR -"),
                                            const Icon(
                                              Icons.place,
                                              color: Colors.red,
                                              size: 20.0,
                                              semanticLabel:
                                                  'Shows Apucarana Localization',
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                launchUrl(Uri.parse(
                                                    "https://www.google.com/maps?q=Rua+dos+Funcion%C3%A1rios,+1323+-+Cabral+80035-050+Curitiba+PR&hl=pt-BR&ie=UTF8&ll=-25.409342,-49.249048&spn=0.011358,0.021651&sll=-25.45403,-49.292382&sspn=0.011354,0.021651&z=16&iwloc=r1"));
                                              },
                                              child: const Text('Localização'),
                                            ),
                                          ],
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            launchUrl(Uri.parse(
                                                "https://www.fundepar.pr.gov.br/Formulario/Contato"));
                                          },
                                          child: const Text('Telefones'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
        ),
        drawer: const Drawer(child: PersonalizedDrawer()),
      ),
    );
  }

  void printinfo() {}
}
