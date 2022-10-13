import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/components/escola_card_component.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

import '../shared_Data/model/escola_model.dart';

class OpcoesCardComponent extends StatefulWidget {
  late final String titulo;
  late final String regiao;
  late final String link1;
  late final String link2;

  OpcoesCardComponent(
      {super.key,
      required this.titulo,
      required this.regiao,
      required this.link1,
      required this.link2});
  @override
  _OpcoesCardComponentState createState() => _OpcoesCardComponentState();
}

class _OpcoesCardComponentState extends State<OpcoesCardComponent> {
  final Color color = const Color(0x00ff3b30);
  Color secondColor = const Color(0xffaeaeb2);
  Color buttonColor = const Color(0xff1590a6);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () => onClick(),
        child: Material(
          borderRadius: BorderRadiusGeometry.lerp(
              BorderRadius.circular(10), BorderRadius.circular(10), 5),
          elevation: 4,
          shadowColor: secondColor,
          color: Colors.white,
          child: ListTile(
            title: Text(
              widget.titulo,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.016,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1.9),
                        child: Text(widget.regiao,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onClick() async {
    final webScraper = WebScraper('https://www.nre.seed.pr.gov.br');
    List<Escola> apucaranaConvocacoes = [];
    List<Map<String, dynamic>>? search;
    if (widget.titulo == 'Assistente Administrativo') {
      if (await webScraper.loadWebPage(widget.link1)) {
        search = webScraper.getElement(
            '#content > div.docum_window > div > div.docum_size80 > div > div.docum_filelist > div > div.docum_filebase > div.docum_filebase_l > a)',
            ['href']);
        search.forEach(
          (element) {
            return apucaranaConvocacoes.add(
              Escola("${element['title']}", '${element['attributes']['href']}'),
            );
          },
        );
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
                  width: MediaQuery.of(context).size.width > 600
                      ? MediaQuery.of(context).size.width * 0.5
                      : MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Text("Lista de documentos: Assistente Administrativo"),
                      Expanded(
                        child: ListView.separated(
                          itemCount: apucaranaConvocacoes.length,
                          itemBuilder: (BuildContext context, int index) {
                            final escola = apucaranaConvocacoes[index];
                            return EscolaCardComponent(
                              titulo: escola.nome,
                              regiao: widget.regiao,
                              link: escola.url,
                              type: false,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      }
    } else {
      if (await webScraper.loadWebPage(widget.link2)) {
        search = webScraper.getElement(
            '#content > div.docum_window > div > div.docum_size80 > div > div.docum_filelist > div > div.docum_filebase > div.docum_filebase_l > a)',
            ['href']);
        search.forEach(
          (element) {
            return apucaranaConvocacoes.add(
              Escola("${element['title']}", '${element['attributes']['href']}'),
            );
          },
        );
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
                  width: MediaQuery.of(context).size.width > 600
                      ? MediaQuery.of(context).size.width * 0.5
                      : MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Text("Lista de documentos: Auxiliar Serviços Gerais"),
                      Expanded(
                        child: ListView.separated(
                          itemCount: apucaranaConvocacoes.length,
                          itemBuilder: (BuildContext context, int index) {
                            final escola = apucaranaConvocacoes[index];
                            return EscolaCardComponent(
                              titulo: escola.nome,
                              regiao: widget.regiao,
                              link: escola.url,
                              type: false,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      }
    }
  }
}
