import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/shared_Data/grid_image_values.dart';
import 'package:url_launcher/url_launcher.dart';

class GridImagePopUp extends StatefulWidget {
  const GridImagePopUp({Key? key}) : super(key: key);
  @override
  _GridImagePopUpState createState() => _GridImagePopUpState();
}

class _GridImagePopUpState extends State<GridImagePopUp> {
  String dropdownValue = "";
  final Uri _url = Uri.parse(
      "https://www.nre.seed.pr.gov.br/modules/conteudo/conteudo.php?conteudo=39");
  Color mainColor = const Color(0xffe5e5ea);

  @override
  Widget build(BuildContext context) {
      print("pressionado");
    String selectedMenu = '';
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
      ),
      contentPadding: const EdgeInsets.only(
        top: 10.0,
      ),
      title: const Text(
        "Informações extras",
        style: TextStyle(fontSize: 24.0),
      ),
      content: SizedBox(
        height: 400,
        width: MediaQuery.of(context).size.width > 600
            ? MediaQuery.of(context).size.width * 0.7
            : MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: GridImageValue.imageLinks.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return new GestureDetector(
                  onTap: () {
                    launchUrl(Uri.parse(GridImageValue.imageLinks[index]));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(GridImageValue.imagePaths[index]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
