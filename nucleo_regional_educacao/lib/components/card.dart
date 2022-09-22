import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardComponent extends StatefulWidget {
  late final String data;
  late final String titulo;
  late final String link;

  CardComponent({super.key, required this.data, required this.titulo, required this.link});
  @override
  _CardComponentState createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent> {
  final Color color = const Color(0xff3b30);
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
                            BorderRadius.circular(10),
                            BorderRadius.circular(10),
                            5),
          elevation: 4,
          shadowColor: secondColor,
          color: Colors.white,
          child: ListTile(
            title: Text(
              widget.titulo,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize:MediaQuery.of(context).size.height * 0.016,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(84, 193, 102, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 1.9),
                      child: Text(widget.data,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          )),
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

  void onClick() {
    launchUrl(
        Uri.parse("https://www.nre.seed.pr.gov.br/modules/qas/${widget.link}"));
  }
}
