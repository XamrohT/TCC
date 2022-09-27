import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProcuraCardComponent extends StatefulWidget {
  late final String titulo;
  late final String link;

  ProcuraCardComponent({super.key, required this.titulo, required this.link});
  @override
  _ProcuraCardComponentState createState() => _ProcuraCardComponentState();
}

class _ProcuraCardComponentState extends State<ProcuraCardComponent> {
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
          child: Container(
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
                          fontSize: MediaQuery.of(context).size.height * 0.016,
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
    launchUrl(Uri.parse(widget.link));
  }
}
