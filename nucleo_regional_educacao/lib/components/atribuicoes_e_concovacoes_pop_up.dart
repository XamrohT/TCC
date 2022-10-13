import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/components/atribuicao_convocacao_card.dart';
import 'package:nre_tcc_feitep/components/custom_procura_card.dart';
import 'package:nre_tcc_feitep/shared_Data/procura_card_values.dart';

class AtribuicoesConcocacoesCustomPopUp extends StatefulWidget {
  const AtribuicoesConcocacoesCustomPopUp({Key? key}) : super(key: key);
  @override
  _AtribuicoesConcocacoesCustomPopUpState createState() =>
      _AtribuicoesConcocacoesCustomPopUpState();
}

class _AtribuicoesConcocacoesCustomPopUpState
    extends State<AtribuicoesConcocacoesCustomPopUp> {
  List<String> pathImagens = [
    'assets/images/pertencimento_etnicorracial.jpeg',
    'assets/images/icone_convocacoes_pss.png',
    'assets/images/atribuicoes_aulas.png',
    'assets/images/cas_apucarana.png',
  ];
  List<String> route = [
    '/apucarana/apucarana_convocacao_pessoas_negras',
    '/apucarana/apucarana_convocao_pss',
    '/apucarana/apucarana_atribuicao_de_aulas_e_funcoes',
    '',
  ];
  List<String> link = [
    '',
    '',
    '',
    'https://www.casapucarana.com',
  ];
  final Uri _url = Uri.parse(
      "https://www.nre.seed.pr.gov.br/modules/conteudo/conteudo.php?conteudo=39");
  Color mainColor = const Color(0xffe5e5ea);

  @override
  Widget build(BuildContext context) {
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
        "Atribuições e Convocações",
        style: TextStyle(fontSize: 24.0),
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width > 600
            ? MediaQuery.of(context).size.width * 0.7
            : MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return AtribuicaoConvocacaoCardComponent(
                  titulo: '',
                  imagePath: pathImagens[index],
                  route: route[index],
                  link: link[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
