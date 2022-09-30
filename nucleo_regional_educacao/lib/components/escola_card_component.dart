import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EscolaCardComponent extends StatefulWidget {
  late final String titulo;
  late final String link;

  EscolaCardComponent({super.key, required this.titulo, required this.link});
  @override
  _EscolaCardComponentState createState() => _EscolaCardComponentState();
}

class _EscolaCardComponentState extends State<EscolaCardComponent> {
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
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1.9),
                        child: Text('NRE Apucarana',
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

  void onClick() {
    launchUrl(
        Uri.parse("${widget.link}"));
  }
}
