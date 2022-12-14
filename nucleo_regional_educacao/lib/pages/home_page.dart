import 'dart:typed_data';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/components/drawer.dart';
import 'package:nre_tcc_feitep/components/avisos_nre_dropdown.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late FutureOr<Uint8List> content;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Material(
                  elevation: 4,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 9,
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
                                  image: AssetImage(
                                      'assets/images/logo_parana.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'N??CLEOS REGIONAIS DE EDUCA????O',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 12, 8, 12),
                        child: AvisosNreDropdown(),
                      ),
                      Material(
                        elevation: 2,
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          height: MediaQuery.of(context).size.height / 2.2,
                          child: Center(
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.45,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: AssetImage(
                                            'assets/images/mapa_parana.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        indent:
                            MediaQuery.of(context).size.width > 850 ? 240 : 20,
                        endIndent:
                            MediaQuery.of(context).size.width > 850 ? 240 : 20,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 8, 8, 0),
                      child: SizedBox(
                          height: 30,
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Text("Ultimas Not??cias:")),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('NRE Campo Mour??o',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 12)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('PR??MIO REDA????O PARAN?? - AGRINHO 2022',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.height * 0.1
                              : MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'No dia 09 de dezembro de 2022, o N??cleo Regional de Campo Mour??o ir?? realizar a entrega do pr??mio Reda????o Paran?? Agrinho 2022 a 14 estudantes que ficaram em 2?? e 3?? lugares no concurso. Outros 7 ...',
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                20.0,
                                              ),
                                            ),
                                          ),
                                          content: SizedBox(
                                            height: 300,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    600
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5
                                                : MediaQuery.of(context)
                                                    .size
                                                    .width,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Text(
                                                      "PR??MIO REDA????O PARAN?? - AGRINHO 2022",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                        "No dia 09 de dezembro de 2022, o N??cleo Regional de Campo Mour??o ir?? realizar a entrega do pr??mio Reda????o Paran?? Agrinho 2022 a 14 estudantes que ficaram em 2?? e 3?? lugares no concurso. Outros 7 estudantes, que ficaram em 1?? lugar, j?? receberam o pr??mio em Curitiba, mas est??o convidados(as) a participar da cerim??nia.A premia????o acontece ??s 09:00 horas da manh??, no 4?? andar do NRE Campo Mour??o, com a presen??a de diretores(as) das 16 institui????es de ensino premiadas, al??m dos professores e professoras que tamb??m receber??o o pr??mio, pais e autoridades."),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                        "Confira, na lista abaixo, as reda????es vencedoras."),
                                                  ),
                                                  Text(
                                                    "Categoria 6?? Ano",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text("1?? Lugar -"),
                                                      TextButton(
                                                        onPressed: () async {
                                                          try {
                                                            await launchUrl(
                                                              Uri.parse(
                                                                  'https://drive.google.com/file/d/1R5-mlhPUnWlyRASQJPpFxi2rjy6pWozp/view'),
                                                              mode: LaunchMode
                                                                  .externalApplication,
                                                            );
                                                          } catch (err) {}
                                                        },
                                                        child: Text(
                                                            "Ana Caroline Assis Ferreira"),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                      "Professora: Sandra Marcia Bonilha Pilla - CE Ulysses Guimar??es - Roncador"),
                                                  Text(
                                                      "Diretor: Cleber Fabr??cio"),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text("2?? Lugar -"),
                                                      TextButton(
                                                        onPressed: () async {
                                                          try {
                                                            await launchUrl(
                                                              Uri.parse(
                                                                  'https://drive.google.com/file/d/1Ez-9y1WBbFwB03HW_M1pZxvq7QgrWl0W/view'),
                                                              mode: LaunchMode
                                                                  .externalApplication,
                                                            );
                                                          } catch (err) {}
                                                        },
                                                        child: Text(
                                                            "Felipe Sales Vieira"),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                      "Professora: Maria Claudia Ramos - CCM Darcy Jos?? Costa - Campo Mour??o"),
                                                  Text(
                                                      "Diretor: Renato Correa"),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text("3?? Lugar -"),
                                                      TextButton(
                                                        onPressed: () async {
                                                          try {
                                                            await launchUrl(
                                                              Uri.parse(
                                                                  'https://drive.google.com/file/d/1qmTD4a4kKyCo9V2gE173rI_DMr6UUP7o/view'),
                                                              mode: LaunchMode
                                                                  .externalApplication,
                                                            );
                                                          } catch (err) {}
                                                        },
                                                        child: Text(
                                                            "Joaquim Ribeiro Pires"),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                      "Professora Marilda Costa de Godoy - CE Altamira do Paran??"),
                                                  Text(
                                                      "Diretora: Lilian Atamantchuk Albuquerque"),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Text("Leia mais"),
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('NRE Francisco Beltr??o',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 12)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('INSCRI????ES PSS-2023:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.height * 0.1
                              : MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'NRE Francisco Beltr??o - NRE Francisco Beltr??o - ???? INSCRI????ES PSS-2023: TILS; Professor - Educa????o Profissional; Professor e Professor Pedagogo - Escolas Itinerantes, Ed Escolar Ind??gena...',
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                20.0,
                                              ),
                                            ),
                                          ),
                                          content: SizedBox(
                                            height: 300,
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width >
                                                    600
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5
                                                : MediaQuery.of(context)
                                                    .size
                                                    .width,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "INSCRI????ES PSS-2023:",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                        "O Secret??rio(a) de Estado da Educa????o e do Esporte, torna p??blica a realiza????o de Processo Seletivo Simplificado (PSS) visando ?? contrata????o tempor??ria para o exerc??cio da fun????o de Tradutor e Int??rprete de L??ngua Brasileira de Sinais ??? TILS;  "),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                        "Professor para atuar na Educa????o Profissional; "),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                        "Professor e Professor Pedagogo para atuar em Escolas Itinerantes, Educa????o Escolar Ind??gena, Educa????o Escolar Quilombola;"),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                        "Professor para atuar em Centro de L??nguas Estrangeiras Modernas ??? CELEM e Professor para atuar no Grupo de Dan??a Contempor??nea do Col??gio Estadual do Paran?? ??? DANCEP."),
                                                  ),
                                                  Text("Link do edital:"),
                                                  TextButton(
                                                    onPressed: () async {
                                                      try {
                                                        await launchUrl(
                                                          Uri.parse(
                                                              'https://arq.e-escola.pr.gov.br/pss/desvio_seed/pss_2023/Edital%2070-2022-GS-SEED%20PSS.pdf'),
                                                          mode: LaunchMode
                                                              .externalApplication,
                                                        );
                                                      } catch (err) {}
                                                    },
                                                    child: Text(
                                                        "https://arq.e-escola.pr.gov.br/pss/desvio_seed/pss_2023/Edital%2070-2022-GS-SEED%20PSS.pdf"),
                                                  ),
                                                  Text(
                                                      "Link com maiores informa????o sobre o processo"),
                                                  TextButton(
                                                    onPressed: () async {
                                                      try {
                                                        await launchUrl(
                                                          Uri.parse(
                                                              'https://arq.e-escola.pr.gov.br/pss/desvio_seed/pss_2023/Inscricoes.html'),
                                                          mode: LaunchMode
                                                              .externalApplication,
                                                        );
                                                      } catch (err) {}
                                                    },
                                                    child: Text(
                                                        "https://arq.e-escola.pr.gov.br/pss/desvio_seed/pss_2023/Inscricoes.html"),
                                                  ),
                                                  Text(
                                                      "Per??odo de Inscri????es Das 9h de 18/11/2022 at?? as 18h de 07/12/2022 no endere??o eletr??nico"),
                                                  TextButton(
                                                    onPressed: () async {
                                                      try {
                                                        await launchUrl(
                                                            Uri.parse(
                                                                'http://www.pss.pr.gov.br/pss/acesso.do;jsessionid=D0C9D433BC6A068386A36CC2EE734DFE'),
                                                            mode: LaunchMode
                                                                .externalApplication);
                                                      } catch (err) {}
                                                    },
                                                    child: Text(
                                                        "www.pss.pr.gov.br"),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Text("Leia mais"),
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('NRE Uni??o da Vit??ria',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 12)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                                'EDITAL 70/2022 - PSS PARA ATUAR: EDUCA????O PROFISSIONAL, TILS, PROFESSOR E PEDAGOGO PARA ESCOLA ITINERANTE E CELEM',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 0, 8, 0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.height * 0.1
                              : MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width > 850
                              ? MediaQuery.of(context).size.width / 1.7
                              : MediaQuery.of(context).size.width / 1.1,
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Edital 70/2022,* referente ?? oferta visando ?? contrata????o tempor??ria para o exerc??cio da fun????o de *Tradutor e Int??rprete de L??ngua Brasileira de Sinais ??? TILS; Professor para atuar na Educa????o ...',
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  20.0,
                                                ),
                                              ),
                                            ),
                                            content: SizedBox(
                                              height: 300,
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      600
                                                  ? MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5
                                                  : MediaQuery.of(context)
                                                      .size
                                                      .width,
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "EDITAL 70/2022 - PSS PARA ATUAR: EDUCA????O PROFISSIONAL, TILS, PROFESSOR E PEDAGOGO PARA ESCOLA ITINERANTE E CELEM",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                          "Edital 70/2022,* referente ?? oferta visando ?? contrata????o tempor??ria para o exerc??cio da fun????o de *Tradutor e Int??rprete de L??ngua Brasileira de Sinais ??? TILS; Professor para atuar na Educa????o Profissional; Professor e Professor Pedagogo para atuar em Escolas Itinerantes, Professor para atuar em Centro de L??nguas Estrangeiras Modernas ??? CELEM."),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                          "Per??odo de inscri????es: Das 9h de 18 de novembro de 2022 at?? ??s 18h de 07 de dezembro de 2022, no endere??o eletr??nico "),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                          "Per??odo de Inscri????es Das 9h de 18/11/2022 at?? as 18h de 07/12/2022 no endere??o eletr??nico"),
                                                    ),
                                                    TextButton(
                                                      onPressed: () async {
                                                        try {
                                                          await launchUrl(
                                                              Uri.parse(
                                                                  'http://www.pss.pr.gov.br/pss/acesso.do;jsessionid=D0C9D433BC6A068386A36CC2EE734DFE'),
                                                              mode: LaunchMode
                                                                  .externalApplication);
                                                        } catch (err) {}
                                                      },
                                                      child: Text(
                                                          "www.pss.pr.gov.br"),
                                                    ),
                                                    TextButton(
                                                      onPressed: () async {
                                                        try {
                                                          await launchUrl(
                                                              Uri.parse(
                                                                  'https://arq.e-escola.pr.gov.br/pss/desvio_seed/pss_2023/Inscricoes.html'),
                                                              mode: LaunchMode
                                                                  .externalApplication);
                                                        } catch (err) {}
                                                      },
                                                      child: Text("Inscri????es"),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  }
                                },
                                child: Text("Leia mais"),
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Material(
                          color: Colors.grey[200],
                          child: Container(
                            child: MediaQuery.of(context).size.width > 850
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text(
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                                "Secretaria da Educa????o do Paran??"),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text(
                                                "Av. ??gua Verde, 2140 - Vila Izabel"),
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                  "80240-900 - Curitiba - PR -"),
                                              const Icon(
                                                Icons.place,
                                                color: Colors.red,
                                                size: 20.0,
                                                semanticLabel:
                                                    'Shows Apucarana Localization',
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  launchUrl(Uri.parse(
                                                      "https://www.google.com/maps/place/Av.+%C3%81gua+Verde,+2140+-+%C3%81gua+Verde,+Curitiba+-+PR,+80240-070/@-25.4538165,-49.2926591,17z/data=!3m1!4b1!4m5!3m4!1s0x94dce3836bfcf0a9:0xddf65733c4d6bdf5!8m2!3d-25.4538165!4d-49.2926591"));
                                                },
                                                child:
                                                    const Text('Localiza????o'),
                                              ),
                                            ],
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text("41 3340-1500"),
                                          ),
                                        ],
                                      ),
                                      const VerticalDivider(
                                        color: Colors.black,
                                        thickness: 3,
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text(
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                                "instituto Paranaense de Desenvolvimento \nEducacional Fundepar"),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text(
                                                "Av. ??gua Verde, 2140 - Vila Izabel"),
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                  "80240-900 - Curitiba - PR -"),
                                              const Icon(
                                                Icons.place,
                                                color: Colors.red,
                                                size: 20.0,
                                                semanticLabel:
                                                    'Shows Apucarana Localization',
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  launchUrl(Uri.parse(
                                                      "https://www.google.com/maps?q=Rua+dos+Funcion%C3%A1rios,+1323+-+Cabral+80035-050+Curitiba+PR&hl=pt-BR&ie=UTF8&ll=-25.409342,-49.249048&spn=0.011358,0.021651&sll=-25.45403,-49.292382&sspn=0.011354,0.021651&z=16&iwloc=r1"));
                                                },
                                                child:
                                                    const Text('Localiza????o'),
                                              ),
                                            ],
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              launchUrl(Uri.parse(
                                                  "https://www.fundepar.pr.gov.br/Formulario/Contato"));
                                            },
                                            child: const Text('Telefones'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text(
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                                "Secretaria da Educa????o do Paran??"),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text(
                                                "Av. ??gua Verde, 2140 - Vila Izabel"),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                  "80240-900 - Curitiba - PR -"),
                                              const Icon(
                                                Icons.place,
                                                color: Colors.red,
                                                size: 20.0,
                                                semanticLabel:
                                                    'Shows Apucarana Localization',
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  launchUrl(Uri.parse(
                                                      "https://www.google.com/maps/place/Av.+%C3%81gua+Verde,+2140+-+%C3%81gua+Verde,+Curitiba+-+PR,+80240-070/@-25.4538165,-49.2926591,17z/data=!3m1!4b1!4m5!3m4!1s0x94dce3836bfcf0a9:0xddf65733c4d6bdf5!8m2!3d-25.4538165!4d-49.2926591"));
                                                },
                                                child:
                                                    const Text('Localiza????o'),
                                              ),
                                            ],
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text("41 3340-1500"),
                                          ),
                                        ],
                                      ),
                                      const VerticalDivider(
                                        color: Colors.black,
                                        thickness: 3,
                                        width: 20,
                                      ),
                                      const Divider(
                                          indent: 20,
                                          endIndent: 10,
                                          color: Colors.black),
                                      Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text(
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                                "instituto Paranaense de Desenvolvimento \n"),
                                          ),
                                          Text(
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              "Educacional Fundepar"),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 12.0),
                                            child: Text(
                                                "Av. ??gua Verde, 2140 - Vila Izabel"),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                  "80240-900 - Curitiba - PR -"),
                                              const Icon(
                                                Icons.place,
                                                color: Colors.red,
                                                size: 20.0,
                                                semanticLabel:
                                                    'Shows Apucarana Localization',
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  launchUrl(Uri.parse(
                                                      "https://www.google.com/maps?q=Rua+dos+Funcion%C3%A1rios,+1323+-+Cabral+80035-050+Curitiba+PR&hl=pt-BR&ie=UTF8&ll=-25.409342,-49.249048&spn=0.011358,0.021651&sll=-25.45403,-49.292382&sspn=0.011354,0.021651&z=16&iwloc=r1"));
                                                },
                                                child:
                                                    const Text('Localiza????o'),
                                              ),
                                            ],
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              launchUrl(Uri.parse(
                                                  "https://www.fundepar.pr.gov.br/Formulario/Contato"));
                                            },
                                            child: const Text('Telefones'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: const Drawer(child: PersonalizedDrawer()),
      ),
    );
  }
}
