import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/avisos_nre_component.dart';
import 'package:url_launcher/url_launcher.dart';

class Apucarana_chefia extends StatefulWidget {
  const Apucarana_chefia({Key? key}) : super(key: key);

  @override
  _Apucarana_chefiaState createState() => _Apucarana_chefiaState();
}

class _Apucarana_chefiaState extends State<Apucarana_chefia> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
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
                              height: MediaQuery.of(context).size.height * 0.1,
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
                        decoration: const BoxDecoration(),
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
                                      fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              600
                                          ? MediaQuery.of(context).size.height *
                                              0.018
                                          : MediaQuery.of(context).size.height *
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
                                      fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              600
                                          ? MediaQuery.of(context).size.height *
                                              0.018
                                          : MediaQuery.of(context).size.height *
                                              0.015,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.place,
                                  color: Colors.red,
                                  size: 20.0,
                                  semanticLabel: 'Shows Apucarana Localization',
                                ),
                                TextButton(
                                  onPressed: () {
                                    launchUrl(Uri.parse(
                                        "https://www.google.com.br/maps/place/R.+Lapa,+250+-+Centro,+Apucarana+-+PR,+86800-310/@-23.5545826,-51.4770048,15z/data=!4m13!1m7!3m6!1s0x94ec9979787489cd:0x2207f18044757f11!2sR.+Lapa,+250+-+Centro,+Apucarana+-+PR,+86800-310!3b1!8m2!3d-23.5545826!4d-51.4682501!3m4!1s0x94ec9979787489cd:0x2207f18044757f11!8m2!3d-23.5545826!4d-51.4682501"));
                                  },
                                  child: const Text('Localização'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 24, 0, 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.lerp(
                            BorderRadius.circular(10),
                            BorderRadius.circular(10),
                            5),
                      ),
                      width: MediaQuery.of(context).size.width > 600
                          ? MediaQuery.of(context).size.width * 0.7
                          : MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 10.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AvisosNreComponent(
                              label: "Institucional",
                              onTapped: () => {Navigator.pop(context)},
                              icon: Icons.account_balance),
                          AvisosNreComponent(
                              label: "Avisos",
                              onTapped: () => {print("Institucional")},
                              icon: Icons.my_library_books),
                          AvisosNreComponent(
                              label: "Noticias",
                              onTapped: () => {print("Institucional")},
                              icon: Icons.newspaper),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text("CHEFIA",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02)),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(24)),
                                    child: Image.asset(
                                        'assets/images/apucarana_chefe.png',
                                        fit: BoxFit.contain),
                                  ),
                                ),
                                Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  direction: Axis.vertical,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Vladimir Barbosa da Silva',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                          'Chefe do Núcleo Regional de \nEducação de Apucarana'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Missão/Sobre',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                    'Ao Chefe do Núcleo Regional de Educação compete divulgar e zelar pelo cumprimento da legislação, regulamentos, normas e diretrizes relativos à educação e serviços administrativos, bem como representar oficialmente a Secretaria de Estado da Educação perante as autoridades, órgãos federais, estaduais, municipais e junto às instituições culturais, profissionais, científicas e associativas ou corporações particulares, quando solicitado'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                    'Ao Assistente Técnico compete acompanhar a chefia do NRE na implantação e acompanhamento de todos os procedimentos administrativos do NRE, respondendo, na ausência da chefia, pelas atividades do NRE'),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(8.0, 12, 0, 0),
                              child: Text(
                                'Equipe',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8),
                              child: Text('Assistente Técnica'),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Patrícia Cristina Marchi | patriciamarchi@seed.pr.gov.br | (43) 3420-1671'),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Assessoria / Comunicação'),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Elaine Mara Cunha Cruz | elainecunha@seed.pr.gov.br | (43) 3420-1660 '),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Ana Britici Valério | anabritival@seed.pr.gov.br | (43) 3420-1676 '),
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.grey[200],
                    child: Container(
                      
                      child: MediaQuery.of(context).size.width > 600
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    const Text(
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
