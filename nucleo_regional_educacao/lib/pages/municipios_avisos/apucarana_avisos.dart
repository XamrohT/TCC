import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/card.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages
import 'package:web_scraper/web_scraper.dart';

class Apucarana_avisos extends StatefulWidget {
  @override
  _Apucarana_avisosState createState() => _Apucarana_avisosState();
}

class _Apucarana_avisosState extends State<Apucarana_avisos> {
  final webScraper = WebScraper('https://www.nre.seed.pr.gov.br');

  List<String> elementsTitle = [];
  List<String> elementsDate = [];
  List<String> elementsLink = [];
  List<Map<String, dynamic>>? search;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void fetchProducts() async {
    final webScraper = WebScraper('https://www.nre.seed.pr.gov.br');
    if (await webScraper.loadWebPage(
        '/modules/qas/categoria.php?cod_categoria=3&nome_categoria=NRE%20Apucarana&ordenacao=titulo&tipo_ordem=ASC&filtroTitulo=&filtroDataIni=1488558000&filtroDataFim=1662993000')) {
      search = webScraper.getElement(
          'div.blockContent > table > tbody > tr > td > a', ['href']);
      for (int i = 1; i <= search!.length - 1; i += 2) {
        elementsTitle.add('${search![i]['title']}');
        elementsLink.add('${search![i]['attributes']['href']}');
      }
      for (int i = 0; i <= search!.length; i += 2) {
        elementsDate.add('${search![i]['title']}');
      }
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
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
            SafeArea(
              child: search == null
                  ? const Center(
                      child:
                          CircularProgressIndicator(), // Loads Circular Loading Animation
                    )
                  : Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: ListView.separated(
                            itemCount: 40,
                            itemBuilder: (BuildContext context, int index) {
                              return CardComponent(
                                data: elementsDate[index],
                                titulo: elementsTitle[index],
                                link: elementsLink[index],
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
          ],
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
}
