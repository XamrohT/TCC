import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/components/drawer.dart';
import 'package:nre_tcc_feitep/components/avisos_nre_component.dart';
import 'package:nre_tcc_feitep/components/card.dart';
import 'package:nre_tcc_feitep/components/end_drawer.dart';
import 'package:nre_tcc_feitep/components/escola_card_component.dart';
import 'package:nre_tcc_feitep/shared_Data/model/escola_model.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages
import 'package:web_scraper/web_scraper.dart';

class Apucarana_colegios_escolas extends StatefulWidget {
  @override
  _Apucarana_colegios_escolasState createState() =>
      _Apucarana_colegios_escolasState();
}

class _Apucarana_colegios_escolasState
    extends State<Apucarana_colegios_escolas> {
  final webScraper = WebScraper('https://www.nre.seed.pr.gov.br');

  List<Escola> apucaranaEscola = [];
  List<Escola> arapongasEscola = [];
  List<Escola> bomSucessoEscola = [];
  List<Escola> borrazopolisEscola = [];
  List<Escola> californiaEscola = [];
  List<Escola> cambiraEscola = [];
  List<Escola> cruzmaltinaEscola = [];
  List<Escola> faxinalEscola = [];
  List<Escola> jandaiaDoSulEscola = [];
  List<Escola> kaloreEscola = [];
  List<Escola> marilandiaDoSulEscola = [];
  List<Escola> marumbiEscola = [];
  List<Escola> mauaDaSerraEscola = [];
  List<Escola> novoItacolomiEscola = [];
  List<Escola> rioBomEscola = [];
  List<Escola> sabaudiaEscola = [];
  List<Map<String, dynamic>>? search;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void fetchProducts() async {
    final webScraper = WebScraper('https://www.nre.seed.pr.gov.br');

    if (await webScraper
        .loadWebPage('/modules/conteudo/conteudo.php?conteudo=524')) {
      search = webScraper.getElement('#faq-1 >  a', ['href']);
      search!.forEach((element) {
        return apucaranaEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });

      search = webScraper.getElement('#faq-2 >  a', ['href']);

      search!.forEach((element) {
        return arapongasEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-3 >  a', ['href']);

      search!.forEach((element) {
        return bomSucessoEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-4 >  a', ['href']);

      search!.forEach((element) {
        return borrazopolisEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-5>  a', ['href']);

      search!.forEach((element) {
        return californiaEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });

      search = webScraper.getElement('#faq-6 >  a', ['href']);

      search!.forEach((element) {
        return cambiraEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-7 >  a', ['href']);

      search!.forEach((element) {
        return cruzmaltinaEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-8 >  a', ['href']);

      search!.forEach((element) {
        return faxinalEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });

      search = webScraper.getElement('#faq-9 >  a', ['href']);

      search!.forEach((element) {
        return jandaiaDoSulEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-10 >  a', ['href']);

      search!.forEach((element) {
        return kaloreEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-12>  a', ['href']);
      search!.forEach((element) {
        return marilandiaDoSulEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-13 >  a', ['href']);

      search!.forEach((element) {
        return marumbiEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-14 >  a', ['href']);

      search!.forEach((element) {
        return mauaDaSerraEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-15 >  a', ['href']);

      search!.forEach((element) {
        return novoItacolomiEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-16 >  a', ['href']);

      search!.forEach((element) {
        return rioBomEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      search = webScraper.getElement('#faq-17 >  a', ['href']);

      search!.forEach((element) {
        return sabaudiaEscola.add(
          Escola("${element['title']}", '${element['attributes']['href']}'),
        );
      });
      // for (int i = 0; i <= search!.length; i += 2) {
      //   elementsDate.add('${search![i]['title']}');
      // }
      setState(() {});
    }
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
        endDrawer: const Drawer(
          child: EndDrawer(
              '/apucarana/apucarana_chefia',
              '/apucarana/apucarana_colegios_e_escolas',
              '/apucarana/apucarana_documentacao_escolar',
              '/apucarana/apucarana_edificacoes_escolares',
              '/apucarana/apucarana_educacao',
              '/apucarana/apucarana_estrutura',
              '/apucarana/apucarana_formacao_continuada',
              '/apucarana/apucarana_gestao_escolar',
              '/apucarana/apucarana_legislacao_escolar',
              '/apucarana/apucarana_logistica',
              '/apucarana/apucarana_ouvidoria',
              '/apucarana/apucarana_protocolo',
              '/apucarana/apucarana_recursos_descentralizados',
              '/apucarana/apucarana_recursos_humanos',
              '/apucarana/apucarana_registro_escolar',
              '/apucarana/apucarana_tecnologia',
              '/apucarana/apucarana_telefones'),
        ),
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
                      Center(
                        child: IconButton(
                          icon: const Icon(
                            Icons.menu_open,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
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
                            onTapped: () => {
                                  Navigator.pushNamed(
                                      context, '/apucarana/apucarana_avisos')
                                },
                            image: 'assets/images/icon_informativos.png'),
                        AvisosNreComponent(
                            label: "Noticias",
                            onTapped: () => {
                                  Navigator.pushNamed(
                                      context, '/apucarana/apucarana_noticias')
                                },
                            image: 'assets/images/icon_noticias.png'),
                      ]),
                ),
              ),
              SafeArea(
                child: search == null
                    ? const Center(
                        child:
                            CircularProgressIndicator(), // Loads Circular Loading Animation
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                              child: Text("Colégios e Escolas",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.02)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Apucarana',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: Container(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.7,
                                              child: Column(
                                                children: [
                                                  Text('Escolas de Apucarana'),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      shrinkWrap: true,
                                                      itemCount: apucaranaEscola
                                                          .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            apucaranaEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Arapongas',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text('Escolas de Arapongas'),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount: arapongasEscola
                                                          .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            arapongasEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Bom Sucesso',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text(
                                                      "Escolas de Bom Sucesso"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          bomSucessoEscola
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            bomSucessoEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Borrazopolis',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text(
                                                      "Escolas de Borrazopolis"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          borrazopolisEscola
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            borrazopolisEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('California',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text("Escolas de California"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          californiaEscola
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            californiaEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Cambira',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text("Escolas de Cambira"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          cambiraEscola.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            cambiraEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Cruz Maltina',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text(
                                                      "Escolas de Cruzmaltina"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          cruzmaltinaEscola
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            cruzmaltinaEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Faxinal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text("Escolas de Faxinal"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          faxinalEscola.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            faxinalEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Jandaia do Sul',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text(
                                                      "Escolas de Jandaia do Sul"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          jandaiaDoSulEscola
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            jandaiaDoSulEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Kaloré',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text("Escolas de Kaloré"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          kaloreEscola.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            kaloreEscola[index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Marilândia do Sul',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text(
                                                      "Escolas de Marilândia do sul"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          marilandiaDoSulEscola
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            marilandiaDoSulEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Marumbi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text("Escolas de Marumbi"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          marumbiEscola.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            marumbiEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Mauá da Serra',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text(
                                                      "Escolas de Mauá da Serra"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          mauaDaSerraEscola
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            mauaDaSerraEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Novo Itacolomi',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text(
                                                      "Escolas de Novo Itacolomi"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          novoItacolomiEscola
                                                              .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            novoItacolomiEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Rio Bom',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text("Escolas de Rio Bom"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          rioBomEscola.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            rioBomEscola[index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width > 600
                                ? MediaQuery.of(context).size.width * 0.7
                                : MediaQuery.of(context).size.width,
                              child: Material(
                                elevation: 3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: ListTile(
                                  title: const Text('Sabáudia',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: Column(
                                                children: [
                                                  Text("Escolas de Sabáudia"),
                                                  Expanded(
                                                    child: ListView.separated(
                                                      itemCount:
                                                          sabaudiaEscola.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        final escola =
                                                            sabaudiaEscola[
                                                                index];
                                                        return EscolaCardComponent(
                                                          titulo: escola.nome,
                                                          link: escola.url,
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (BuildContext context,
                                                                  int index) =>
                                                              const Divider(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
}
