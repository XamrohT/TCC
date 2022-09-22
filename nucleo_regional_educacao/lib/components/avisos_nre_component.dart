import 'package:flutter/material.dart';

class AvisosNreComponent extends StatelessWidget {
  final Function? onTapped;
  final String? label;
  final IconData? icon;
  final Icon? importedIcon;

  const AvisosNreComponent(
      {this.onTapped, this.label, this.icon, this.importedIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => onTapped!(),
          splashColor: Colors.green[300],
          highlightColor: Colors.blue[300],
          // ignore: unnecessary_new
          child: Material(
            borderRadius: BorderRadiusGeometry.lerp(
                BorderRadius.circular(10), BorderRadius.circular(10), 5),
            elevation: 10,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.185,
              width: MediaQuery.of(context).size.width > 600
                  ? MediaQuery.of(context).size.width * 0.10
                  : MediaQuery.of(context).size.width * 0.25,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.rectangle,
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.zero,
                            child: Icon(
                              icon,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          Center(
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  label!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.020),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
