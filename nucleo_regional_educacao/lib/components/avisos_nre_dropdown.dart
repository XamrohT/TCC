// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

class AvisosNreDropdown extends StatefulWidget {
  const AvisosNreDropdown({Key? key}) : super(key: key);
  @override
  _AvisosNreDropdownState createState() => _AvisosNreDropdownState();
}

class _AvisosNreDropdownState extends State<AvisosNreDropdown> {
  String dropdownValue = "Selecione um núcleo";
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
                Navigator.pushNamed(context, '/apucarana');
              }
            },
            items: <String>[
              'Selecione um núcleo',
              'Apucarana',
              'Área Metropolitana Norte',
              'Área Metropolitana Sul',
              'Assis Chateaubriand',
              'Campo Mourão',
              'Cascavel',
              'Cianorte',
              'Cornélio Procópio',
              'Curitiba',
              'Dois Vizinhos',
              'Foz do Iguaçu',
              'Francisco Beltrão',
              'Goioerê',
              'Guarapuava',
              'Ibaiti',
              'irati',
              'Ivaiporã',
              'Jacarezinho',
              'Laranjeiras do Sul',
              'Loanda',
              'Londrina',
              'Maringá',
              'Paranaguá',
              'Paranavai',
              'Pato Branco',
              'Pitanga',
              'Ponta Grossa',
              'Telêmaco Borba',
              'Toledo',
              'Umuarama',
              'União da Vitória',
              'Wenceslau Braz'
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
}
