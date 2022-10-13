import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AtribuicaoConvocacaoCardComponent extends StatefulWidget {
  late final String titulo;
  late final String imagePath;
  late final String route;
  late final String link;

  AtribuicaoConvocacaoCardComponent({
    super.key,
    required this.titulo,
    required this.imagePath,
    required this.route,
    required this.link,
  });
  @override
  _AtribuicaoConvocacaoCardComponentState createState() =>
      _AtribuicaoConvocacaoCardComponentState();
}

class _AtribuicaoConvocacaoCardComponentState
    extends State<AtribuicaoConvocacaoCardComponent> {
  final Color color = const Color(0x00ff3b30);
  Color secondColor = const Color(0xffaeaeb2);
  Color buttonColor = const Color(0xff1590a6);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () => onClick(),
        child: Material(
          borderRadius: BorderRadiusGeometry.lerp(
              BorderRadius.circular(10), BorderRadius.circular(10), 5),
          elevation: 4,
          shadowColor: secondColor,
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
              ),
            ),
            height: 50,
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.titulo,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width > 600
                              ? 20
                              : MediaQuery.of(context).size.height * 0.016,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onClick() {
    if (widget.link != '') {
      launchUrl(Uri.parse(widget.link));
    } else {
      Navigator.pushNamed(context, widget.route);
    }
  }
}
