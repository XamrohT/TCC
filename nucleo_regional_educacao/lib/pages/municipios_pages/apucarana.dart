import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/Drawer.dart';

class Apucarana extends StatelessWidget {
  const Apucarana({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image:
                                  AssetImage('assets/images/logo_parana.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 30, 8, 0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.lerp(
                          BorderRadius.circular(10),
                          BorderRadius.circular(10),
                          5),
                      border: Border.all(color: Colors.black)),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 6,
                  child: Column(children: [
                    Text(
                      'Núcleo Regional de Educação de Apucarana',
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text('Rua Lapa, 250 - Centro - CEP 86.800-310'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                            'Apucarana - PR | Fone: 43 3420-1600 - Fax: 43 3420-1664'),
                      ],
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child:
                          Text('Localização'),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(child: PersonalizedDrawer()),
      ),
    );
  }
}
