import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/components/custom_procura_card.dart';
import 'package:nre_tcc_feitep/shared_Data/procura_card_values.dart';

class CustomPopUp extends StatefulWidget {
  const CustomPopUp({Key? key}) : super(key: key);
  @override
  _CustomPopUpState createState() => _CustomPopUpState();
}

class _CustomPopUpState extends State<CustomPopUp> {
  String dropdownValue = "";
  final Uri _url = Uri.parse(
      "https://www.nre.seed.pr.gov.br/modules/conteudo/conteudo.php?conteudo=39");
  Color mainColor = const Color(0xffe5e5ea);

  @override
  Widget build(BuildContext context) {
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
        "O que você procura?",
        style: TextStyle(fontSize: 24.0),
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width > 850
            ? MediaQuery.of(context).size.width * 0.7
            : MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 850 ? 5 : 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ProcuraCardComponent(
                    titulo: ProcuraTittlesAndLinks.procuraTitle[index],
                    link: ProcuraTittlesAndLinks.procuraLinks[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
