// ignore_for_file: unused_import, depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/components/exit_dialog.dart';
import 'package:nre_tcc_feitep/shared_Data/model/escola_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

import 'escola_card_component.dart';

class CidadesDropdown extends StatefulWidget {
  const CidadesDropdown({Key? key}) : super(key: key);
  @override
  _CidadesDropdownState createState() => _CidadesDropdownState();
}

class _CidadesDropdownState extends State<CidadesDropdown> {
  String dropdownValue = "Selecione uma cidade";
  bool loading = true;
  final Uri _url = Uri.parse(
      "https://www.nre.seed.pr.gov.br/modules/conteudo/conteudo.php?conteudo=39");

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.all(Radius.circular(12)),
      child: Container(
        height: 50,
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: Colors.black54),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          DropdownButtonFormField<String>(
            decoration: InputDecoration.collapsed(hintText: ''),
            style: const TextStyle(),
            value: dropdownValue,
            onChanged: (String? value) async {
              setState(() {
                dropdownValue = value!;
              });
              if (value == 'Apucarana') {
                function('/modules/documentos/index.php?curent_dir=5521');
                String value = "Selecione uma cidade";
              } else if (value == 'Arapongas') {
                function('/modules/documentos/index.php?curent_dir=216');
                String value = "Selecione uma cidade";
              } else if (value == 'Bom Sucesso') {
                function('/modules/documentos/index.php?curent_dir=332');
                String value = "Selecione uma cidade";
              } else if (value == 'Borrazópolis') {
                function('/modules/documentos/index.php?curent_dir=340');
                String value = "Selecione uma cidade";
              } else if (value == 'Califórnia') {
                function('/modules/documentos/index.php?curent_dir=348');
                String value = "Selecione uma cidade";
              } else if (value == 'Cambira') {
                function('/modules/documentos/index.php?curent_dir=478');
                String value = "Selecione uma cidade";
              } else if (value == 'Cruzmaltina') {
                function('/modules/documentos/index.php?curent_dir=358');
                String value = "Selecione uma cidade";
              } else if (value == 'Faxinal') {
                function('/modules/documentos/index.php?curent_dir=366');
                String value = "Selecione uma cidade";
              } else if (value == 'Jandaia do Sul') {
                function('/modules/documentos/index.php?curent_dir=376');
                String value = "Selecione uma cidade";
              } else if (value == 'Kaloré') {
                function('/modules/documentos/index.php?curent_dir=382');
                String value = "Selecione uma cidade";
              } else if (value == 'Marilândia do Sul') {
                function('/modules/documentos/index.php?curent_dir=390');
                String value = "Selecione uma cidade";
              } else if (value == 'Marumbi') {
                function('/modules/documentos/index.php?curent_dir=398');
                String value = "Selecione uma cidade";
              } else if (value == 'Mauá da Serra') {
                function('/modules/documentos/index.php?curent_dir=403');
                String value = "Selecione uma cidade";
              } else if (value == 'Novo Itacolomi') {
                function('/modules/documentos/index.php?curent_dir=414');
                String value = "Selecione uma cidade";
              } else if (value == 'Rio Bom') {
                function('/modules/documentos/index.php?curent_dir=422');
                String value = "Selecione uma cidade";
              } else if (value == 'Sabáudia') {
                function('/modules/documentos/index.php?curent_dir=430');
                String value = "Selecione uma cidade";
              }
            },
            items: <String>[
              'Selecione uma cidade',
              'Apucarana',
              'Arapongas',
              'Bom Sucesso',
              'Borrazópolis',
              'Califórnia',
              'Cambira',
              'Cruzmaltina',
              'Faxinal',
              'Jandaia do Sul',
              'Kaloré',
              'Marilândia do Sul',
              'Marumbi',
              'Mauá da Serra',
              'Novo Itacolomi',
              'Rio Bom',
              'Sabáudia',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                  child: Text(
                    value,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ]),
      ),
    );
  }

  void function(String link) async {
    final webScraper = WebScraper('https://www.nre.seed.pr.gov.br');
    List<Escola> apucaranaConvocacoes = [];
    List<Map<String, dynamic>>? search;
    Timer? timer;
    if (loading == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            timer = Timer(Duration(seconds: 1), () {
              Navigator.of(context).pop();
            });
            return AlertDialog(
                content: Container(
                    height: 300,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: Center(
                      child: CircularProgressIndicator(
                        value: 0.8,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.purple),
                      ),
                    )));
          }).then((value) => {
            if (timer!.isActive)
              {
                timer!.cancel(),
              }
          });
    }
    if (await webScraper.loadWebPage('$link')) {
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
                    Text("Lista de documentos: professor"),
                    Expanded(
                      child: ListView.separated(
                        itemCount: apucaranaConvocacoes.length,
                        itemBuilder: (BuildContext context, int index) {
                          final escola = apucaranaConvocacoes[index];
                          return EscolaCardComponent(
                            titulo: escola.nome,
                            regiao: dropdownValue,
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
