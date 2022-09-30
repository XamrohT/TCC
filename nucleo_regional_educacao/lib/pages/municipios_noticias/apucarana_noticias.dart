import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/drawer.dart';
import 'package:nucleo_regional_educacao/components/avisos_nre_component.dart';
import 'package:nucleo_regional_educacao/components/card.dart';
import 'package:nucleo_regional_educacao/shared_Data/model/concurso_model.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages
import 'package:web_scraper/web_scraper.dart';

class Apucarana_noticias extends StatefulWidget {
  @override
  _Apucarana_noticiasState createState() => _Apucarana_noticiasState();
}

class _Apucarana_noticiasState extends State<Apucarana_noticias> {
  final webScraper = WebScraper('https://www.nre.seed.pr.gov.br');

  List<Concurso> concursosDisponiveis = [];
  List<String> elementsTitle = [];
  List<String> elementsDate = [];
  List<String> elementsLink = [];
  List<Map<String, dynamic>>? search;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSearching = false;
  String searchText = "";
  final TextEditingController _controller = new TextEditingController();

  void fetchProducts() async {
    final webScraper = WebScraper('https://www.nre.seed.pr.gov.br');

    if (await webScraper
        .loadWebPage('/modules/qas/categoria.php?cod_categoria=3')) {
      search = webScraper.getElement(
          'div.blockContent > table > tbody > tr > td > a', ['href']);
      search?.forEach((element) {});

      for (int i = 1; i <= search!.length - 1; i += 2) {
        elementsTitle.add('${search![i]['title']}');
        elementsLink.add('${search![i]['attributes']['href']}');
        elementsTitle.forEach((element) {});
      }
      for (int i = 0; i <= search!.length; i += 2) {
        elementsDate.add('${search![i]['title']}');
      }
      for (int i = 0; i < elementsTitle.length; i++) {
        concursosDisponiveis
            .add(Concurso(elementsTitle[i], elementsDate[i], elementsLink[i]));
      }
      setState(() {});
    }
  }

  _InvitesListState() {
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        setState(() {
          isSearching = false;
          searchText = "";
        });
      } else {
        setState(() {
          isSearching = true;
          searchText = _controller.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Column(
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
                  // height: MediaQuery.of(context).size.height / 10.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AvisosNreComponent(
                            label: "Institucional",
                            onTapped: () =>
                                {Navigator.pushNamed(context, '/apucarana')},
                            image: 'assets/images/icon_institucional.png'),
                        AvisosNreComponent(
                            label: "Avisos",
                            onTapped: () => {Navigator.pushNamed(context, '/apucarana/apucarana_avisos')},
                            image: 'assets/images/icon_informativos.png'),
                        AvisosNreComponent(
                            label: "Noticias",
                            onTapped: () => {snackBar()},
                            image: 'assets/images/icon_noticias.png'),
                      ]),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Buscar Concursos',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.blue)),
                  ),
                  onChanged: searchConcursos,
                ),
              ),
              SafeArea(
                child: search == null
                    ? const Center(
                        child:
                            CircularProgressIndicator(), // Loads Circular Loading Animation
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.60,
                            width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                            child: ListView.separated(
                              itemCount: concursosDisponiveis.length,
                              itemBuilder: (BuildContext context, int index) {
                                final concurso = concursosDisponiveis[index];
                                return CardComponent(
                                  data: concurso.data,
                                  titulo: concurso.titulo,
                                  link: concurso.url,
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const Divider(),
                            ),
                          ),
                        ],
                      ),
              ),
              Column(
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
              )
            ],
          ),
        ),
        drawer: const Drawer(
          child: PersonalizedDrawer(),
        ),
      ),
    );
  }

  snackBar() {
    final snackBar = SnackBar(
      content: SizedBox(
        height: 20,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: const Text('Você já está localizado na página avisos.')),
      ),
    );

    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void searchConcursos(String query) {
    final suggestions = concursosDisponiveis.where((element) {
      final titulo = element.titulo.toLowerCase();
      final input = query.toLowerCase();
      return titulo.contains(input);
    }).toList();

    setState(() {
      
      concursosDisponiveis = suggestions;
    });
    if (query == "") {
        for (int i = 0; i < elementsTitle.length; i++) {
          concursosDisponiveis.add(
              Concurso(elementsTitle[i], elementsDate[i], elementsLink[i]));
        }
      }
    setState(() {
      
    });
  }
}
