import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class CustomPopUp extends StatefulWidget {
  const CustomPopUp({Key? key}) : super(key: key);
  @override
  _CustomPopUpState createState() => _CustomPopUpState();
}

class _CustomPopUpState extends State<CustomPopUp> {
  String dropdownValue = "Selecione";
  final Uri _url = Uri.parse(
      "https://www.nre.seed.pr.gov.br/modules/conteudo/conteudo.php?conteudo=39");
  Color mainColor = const Color(0xffe5e5ea);

  @override
  Widget build(BuildContext context) {
    String _selectedMenu = '';
    return Material(
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5), topLeft: Radius.circular(5)),
          color: mainColor,
        ),
        child: Column(
          children: [
            PopupMenuButton<Menu>(
              // Callback that sets the selected popup menu item.
              onSelected: (Menu item) {
                setState(() {
                  print('aqui');
                  _selectedMenu = item.name;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                const PopupMenuItem<Menu>(
                  value: Menu.itemOne,
                  child: Text('Item 1'),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.itemTwo,
                  child: Text('Item 2'),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.itemThree,
                  child: Text('Item 3'),
                ),
                const PopupMenuItem<Menu>(
                  value: Menu.itemFour,
                  child: Text('Item 4'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
