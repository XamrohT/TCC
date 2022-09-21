import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/Drawer.dart';
import 'package:nucleo_regional_educacao/components/avisos_nre_component.dart';
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
    print('entrou aqui');
    
      if (await webScraper.loadWebPage(
          '/modules/qas/categoria.php?cod_categoria=3')) {
      print("falhou?");
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
                        height: MediaQuery.of(context).size.height /4,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/apucarana_fachada.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(4, 24, 0, 8),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.lerp(
                        BorderRadius.circular(10),
                        BorderRadius.circular(10),
                        5),
                    border: Border.all(color: Colors.black)),
                width: MediaQuery.of(context).size.width > 600
                    ? MediaQuery.of(context).size.width * 0.7
                    : MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10.0,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  AvisosNreComponent(
                      label: "Institucional",
                      onTapped: () => {Navigator.pop(context)},
                      icon: Icons.account_balance ),
                  AvisosNreComponent(
                      label: "Avisos",
                      onTapped: () => {print("Institucional")},
                      icon: Icons.my_library_books ),
                  AvisosNreComponent(
                      label: "Noticias",
                      onTapped: () => {print("Institucional")},
                      icon: Icons.newspaper),
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
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.60,
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
          child: PersonalizedDrawer(),
        ),
      ),
    );
  }
}
