// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/components/exit_dialog.dart';
import 'package:nre_tcc_feitep/components/opcoes_card_component.dart';
import 'package:nre_tcc_feitep/components/pss_card_component.dart';
import 'package:nre_tcc_feitep/shared_Data/model/escola_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

import 'escola_card_component.dart';

class Distribuicao_pss_dropdown extends StatefulWidget {
  const Distribuicao_pss_dropdown({Key? key}) : super(key: key);
  @override
  _Distribuicao_pss_dropdownState createState() =>
      _Distribuicao_pss_dropdownState();
}

class _Distribuicao_pss_dropdownState extends State<Distribuicao_pss_dropdown> {
  String dropdownValue = "Selecione uma cidade";

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
                function(
                    '/modules/documentos/index.php?curent_dir=5521',
                    '/modules/documentos/index.php?curent_dir=5520',
                    '/modules/documentos/index.php?curent_dir=5519');
                String value = "Selecione uma cidade";
              } else if (value == 'Arapongas') {
                function(
                    '/modules/documentos/index.php?curent_dir=216',
                    '/modules/documentos/index.php?curent_dir=214',
                    '/modules/documentos/index.php?curent_dir=215');
                String value = "Selecione uma cidade";
              } else if (value == 'Bom Sucesso') {
                function(
                    '/modules/documentos/index.php?curent_dir=332',
                    '/modules/documentos/index.php?curent_dir=331',
                    '/modules/documentos/index.php?curent_dir=330');
                String value = "Selecione uma cidade";
              } else if (value == 'Borraz??polis') {
                function(
                    '/modules/documentos/index.php?curent_dir=340',
                    '/modules/documentos/index.php?curent_dir=339',
                    '/modules/documentos/index.php?curent_dir=338');
                String value = "Selecione uma cidade";
              } else if (value == 'Calif??rnia') {
                function(
                    '/modules/documentos/index.php?curent_dir=348',
                    '/modules/documentos/index.php?curent_dir=347',
                    '/modules/documentos/index.php?curent_dir=346');
                String value = "Selecione uma cidade";
              } else if (value == 'Cambira') {
                function(
                    '/modules/documentos/index.php?curent_dir=478',
                    '/modules/documentos/index.php?curent_dir=477',
                    '/modules/documentos/index.php?curent_dir=476');
                String value = "Selecione uma cidade";
              } else if (value == 'Cruzmaltina') {
                function(
                    '/modules/documentos/index.php?curent_dir=358',
                    '/modules/documentos/index.php?curent_dir=357',
                    '/modules/documentos/index.php?curent_dir=356');
                String value = "Selecione uma cidade";
              } else if (value == 'Faxinal') {
                function(
                    '/modules/documentos/index.php?curent_dir=366',
                    '/modules/documentos/index.php?curent_dir=365',
                    '/modules/documentos/index.php?curent_dir=364');
                String value = "Selecione uma cidade";
              } else if (value == 'Jandaia do Sul') {
                function(
                    '/modules/documentos/index.php?curent_dir=376',
                    '/modules/documentos/index.php?curent_dir=375',
                    '/modules/documentos/index.php?curent_dir=374');
                String value = "Selecione uma cidade";
              } else if (value == 'Kalor??') {
                function(
                    '/modules/documentos/index.php?curent_dir=382',
                    '/modules/documentos/index.php?curent_dir=381',
                    '/modules/documentos/index.php?curent_dir=380');
                String value = "Selecione uma cidade";
              } else if (value == 'Maril??ndia do Sul') {
                function(
                    '/modules/documentos/index.php?curent_dir=390',
                    '/modules/documentos/index.php?curent_dir=389',
                    '/modules/documentos/index.php?curent_dir=388');
                String value = "Selecione uma cidade";
              } else if (value == 'Marumbi') {
                function(
                    '/modules/documentos/index.php?curent_dir=398',
                    '/modules/documentos/index.php?curent_dir=396',
                    '/modules/documentos/index.php?curent_dir=397');
                String value = "Selecione uma cidade";
              } else if (value == 'Mau?? da Serra') {
                function(
                    '/modules/documentos/index.php?curent_dir=403',
                    '/modules/documentos/index.php?curent_dir=402',
                    '/modules/documentos/index.php?curent_dir=401');
                String value = "Selecione uma cidade";
              } else if (value == 'Novo Itacolomi') {
                function(
                    '/modules/documentos/index.php?curent_dir=414',
                    '/modules/documentos/index.php?curent_dir=413',
                    '/modules/documentos/index.php?curent_dir=412');
                String value = "Selecione uma cidade";
              } else if (value == 'Rio Bom') {
                function(
                    '/modules/documentos/index.php?curent_dir=422',
                    '/modules/documentos/index.php?curent_dir=421',
                    '/modules/documentos/index.php?curent_dir=420');
                String value = "Selecione uma cidade";
              } else if (value == 'Sab??udia') {
                function(
                    '/modules/documentos/index.php?curent_dir=430',
                    '/modules/documentos/index.php?curent_dir=429',
                    '/modules/documentos/index.php?curent_dir=428');
                String value = "Selecione uma cidade";
              }
            },
            items: <String>[
              'Selecione uma cidade',
              'Apucarana',
              'Arapongas',
              'Bom Sucesso',
              'Borraz??polis',
              'Calif??rnia',
              'Cambira',
              'Cruzmaltina',
              'Faxinal',
              'Jandaia do Sul',
              'Kalor??',
              'Maril??ndia do Sul',
              'Marumbi',
              'Mau?? da Serra',
              'Novo Itacolomi',
              'Rio Bom',
              'Sab??udia',
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

  void function(
      String link, String linkSegundaOpcao, String linkTerceiraOpcao) async {
    final webScraper = WebScraper('https://www.nre.seed.pr.gov.br');
    List<Escola> apucaranaConvocacoes = [];
    List<Map<String, dynamic>>? search;
    bool tipo = true;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          List<String> opcoes = [
            'Professores',
            'Assistente Administrativo',
            'Auxiliar de servi??os gerais'
          ];
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
              width: MediaQuery.of(context).size.width > 850
                  ? MediaQuery.of(context).size.width * 0.5
                  : MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Text("Selecione a fun????o"),
                  Expanded(
                    child: ListView.separated(
                      itemCount: opcoes.length,
                      itemBuilder: (BuildContext context, int index) {
                        final opcoesTittle = opcoes[index];
                        return PSSCardComponent(
                          titulo: opcoes[index],
                          regiao: dropdownValue,
                          link1: link,
                          link2: linkSegundaOpcao,
                          link3: linkTerceiraOpcao,
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
