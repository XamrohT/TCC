import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/Drawer.dart';
import 'package:nucleo_regional_educacao/components/avisos_nre_component.dart';
import 'package:url_launcher/url_launcher.dart';

class Apucarana extends StatelessWidget {
  const Apucarana({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 30, 8, 0),
                      child: Material(
                        borderRadius: BorderRadiusGeometry.lerp(
                            BorderRadius.circular(10),
                            BorderRadius.circular(10),
                            5),
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(),
                          width: MediaQuery.of(context).size.width > 600
                              ? MediaQuery.of(context).size.width * 0.5
                              : MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 6.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Núcleo Regional de Educação de Apucarana',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.02),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 10, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Rua Lapa, 250 - Centro - CEP 86.800-310',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width >
                                                    600
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.018
                                                : MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.015,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Apucarana - PR | Fone: 43 3420-1600 - Fax: 43 3420-1664',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width >
                                                    600
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.018
                                                : MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.015,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.place,
                                    color: Colors.red,
                                    size: 20.0,
                                    semanticLabel:
                                        'Shows Apucarana Localization',
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      launchUrl(Uri.parse(
                                          "https://www.google.com.br/maps/place/R.+Lapa,+250+-+Centro,+Apucarana+-+PR,+86800-310/@-23.5545826,-51.4770048,15z/data=!4m13!1m7!3m6!1s0x94ec9979787489cd:0x2207f18044757f11!2sR.+Lapa,+250+-+Centro,+Apucarana+-+PR,+86800-310!3b1!8m2!3d-23.5545826!4d-51.4682501!3m4!1s0x94ec9979787489cd:0x2207f18044757f11!8m2!3d-23.5545826!4d-51.4682501"));
                                    },
                                    child: Text('Localização'),
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
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 24, 8, 0),
                      child: Material(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width > 600
                              ? MediaQuery.of(context).size.width * 0.7
                              : MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 9.0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AvisosNreComponent(
                                    label: "Institucional",
                                    onTapped: () => {print("Institucional")},
                                    icon: Icons.account_balance),
                                AvisosNreComponent(
                                    label: "Avisos",
                                    onTapped: () => {
                                          Navigator.pushNamed(context,
                                              '/apucarana/apucarana_avisos')
                                        },
                                    icon: Icons.my_library_books),
                                AvisosNreComponent(
                                    label: "Noticias",
                                    onTapped: () => {print("noticias")},
                                    icon: Icons.newspaper),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 12, 8, 0),
                      child: Material(
                        elevation: 5,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width > 600
                              ? MediaQuery.of(context).size.width * 0.5
                              : MediaQuery.of(context).size.width,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 24.0),
                                  child: Row(
                                    children: [
                                      Text("INSTITUCIONAL"),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                          "Este Núcleo Regional de Educação atende\n16 (dezesseis) municípios:"),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Text(
                                          "Apucarana, Arapongas, Bom Sucesso, Borrazópolis,\nCalifórnia, Cambira, Cruzmaltina, Faxinal,\nJandaia do Sul, Kaloré, Marilândia do Sul, Marumbi,\nMauá da Serra, Novo Itacolomi, Rio Bom e Sabáudia."),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4.0, 20, 4, 0),
                                  child: Center(
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage(
                                              'assets/images/apucarana_fachada.jpg'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    color: Colors.grey[300],
                                    child: Text(
                                        "Horário de Funcionamento: segunda a sexta das 8h às 12h e das 13h às 18h"),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(child: PersonalizedDrawer()),
      ),
    );
  }
}
