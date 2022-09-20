import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

class AvisosNreDropdown extends StatefulWidget {
  const AvisosNreDropdown({Key? key}) : super(key: key);
  @override
  _AvisosNreDropdownState createState() => _AvisosNreDropdownState();
}

class _AvisosNreDropdownState extends State<AvisosNreDropdown> {
  String dropdownValue = "Selecione";
  final Uri _url = Uri.parse(
      "https://www.nre.seed.pr.gov.br/modules/conteudo/conteudo.php?conteudo=39");
  Color mainColor = const Color(0xffe5e5ea);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5), topLeft: Radius.circular(5)),
          color: mainColor,
        ),
        child: Column(children: [
          DropdownButtonFormField<String>(
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
              'Selecione',
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
