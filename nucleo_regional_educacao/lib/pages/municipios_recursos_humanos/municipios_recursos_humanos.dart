import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/components/drawer.dart';
import 'package:nre_tcc_feitep/components/avisos_nre_component.dart';
import 'package:nre_tcc_feitep/components/end_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Apucarana_recursos_humanos extends StatefulWidget {
  const Apucarana_recursos_humanos({Key? key}) : super(key: key);

  @override
  _Apucarana_recursos_humanosState createState() =>
      _Apucarana_recursos_humanosState();
}

class _Apucarana_recursos_humanosState
    extends State<Apucarana_recursos_humanos> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        drawer: const Drawer(child: PersonalizedDrawer()),
        endDrawer: const Drawer(
          child: EndDrawer(
              '/apucarana/apucarana_chefia',
              '/apucarana/apucarana_colegios_e_escolas',
              '/apucarana/apucarana_documentacao_escolar',
              '/apucarana/apucarana_edificacoes_escolares',
              '/apucarana/apucarana_educacao',
              '/apucarana/apucarana_estrutura',
              '/apucarana/apucarana_formacao_continuada',
              '/apucarana/apucarana_gestao_escolar',
              '/apucarana/apucarana_legislacao_escolar',
              '/apucarana/apucarana_logistica',
              '/apucarana/apucarana_ouvidoria',
              '/apucarana/apucarana_protocolo',
              '/apucarana/apucarana_recursos_descentralizados',
              '/apucarana/apucarana_recursos_humanos',
              '/apucarana/apucarana_registro_escolar',
              '/apucarana/apucarana_tecnologia',
              '/apucarana/apucarana_telefones'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
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
                          Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.menu_open,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                _scaffoldKey.currentState?.openEndDrawer();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 30, 8, 0),
                    child: Material(
                      borderRadius: BorderRadiusGeometry.lerp(
                          BorderRadius.circular(10),
                          BorderRadius.circular(10),
                          5),
                      elevation: 10,
                      child: Container(
                        decoration: const BoxDecoration(),
                        width: MediaQuery.of(context).size.width > 850
                            ? MediaQuery.of(context).size.width * 0.5
                            : MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height / 6.0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'N??cleo Regional de Educa????o de Apucarana',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 8, 10, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Rua Lapa, 250 - Centro - CEP 86.800-310',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              600
                                          ? MediaQuery.of(context).size.height *
                                              0.018
                                          : MediaQuery.of(context).size.height *
                                              0.015,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Apucarana - PR | Fone: 43 3420-1600 - Fax: 43 3420-1664',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              600
                                          ? MediaQuery.of(context).size.height *
                                              0.018
                                          : MediaQuery.of(context).size.height *
                                              0.015,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.place,
                                  color: Colors.red,
                                  size: 20.0,
                                  semanticLabel: 'Shows Apucarana Localization',
                                ),
                                TextButton(
                                  onPressed: () {
                                    launchUrl(Uri.parse(
                                        "https://www.google.com.br/maps/place/R.+Lapa,+250+-+Centro,+Apucarana+-+PR,+86800-310/@-23.5545826,-51.4770048,15z/data=!4m13!1m7!3m6!1s0x94ec9979787489cd:0x2207f18044757f11!2sR.+Lapa,+250+-+Centro,+Apucarana+-+PR,+86800-310!3b1!8m2!3d-23.5545826!4d-51.4682501!3m4!1s0x94ec9979787489cd:0x2207f18044757f11!8m2!3d-23.5545826!4d-51.4682501"));
                                  },
                                  child: const Text('Localiza????o'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 24, 0, 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.lerp(
                            BorderRadius.circular(10),
                            BorderRadius.circular(10),
                            5),
                      ),
                      width: MediaQuery.of(context).size.width > 850
                          ? MediaQuery.of(context).size.width * 0.7
                          : MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height / 10.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AvisosNreComponent(
                              label: "Institucional",
                              onTapped: () =>
                                  {Navigator.pushNamed(context, '/apucarana')},
                              image: 'assets/images/icon_institucional.png'),
                          AvisosNreComponent(
                              label: "Avisos",
                              onTapped: () => {
                                    Navigator.pushNamed(
                                        context, '/apucarana/apucarana_avisos')
                                  },
                              image: 'assets/images/icon_informativos.png'),
                          AvisosNreComponent(
                              label: "Noticias",
                              onTapped: () => {
                                    Navigator.pushNamed(context,
                                        '/apucarana/apucarana_noticias')
                                  },
                              image: 'assets/images/icon_noticias.png'),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    child: SingleChildScrollView(
                      child: SizedBox(
                        // height: MediaQuery.of(context).size.height/1.4,
                        width: MediaQuery.of(context).size.width > 850
                            ? MediaQuery.of(context).size.width * 0.5
                            : MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: Center(
                                child: Text("Protocolo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02)),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Miss??o/Sobre',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                    'Ao Setor de Recursos Humanos compete organizar e acompanhar, junto com a chefia e coordena????o, o processo de distribui????o de aulas aos professores (efetivos, extraordin??rios, contratos PSS), pelos Documentadores, nos munic??pios jurisdicionados ao NRE, atrav??s de sess??o p??blica. Tamb??m, compete analisar solicita????es de remanejamento ou presta????o de servi??o de professores e funcion??rios.'),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(8.0, 12, 0, 0),
                              child: Text(
                                'Equipe',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8),
                              child: Text('Coordena????o'),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Edimara Naves Mendes | edimara.mendes@escola.pr.gov.br | (43) 3420-1670'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('PSS'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Simone Regina Mortean Silva | simone.mortean@escola.pr.gov.br | (43) 3420-1669'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Maria de F??tima dos Santos de Oliveira | santosoliveira.naria1511@escola.pr.gov.br | (43) 3420-1669'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Marlyn Ferreira DE Freitas da Silva | marlyn.silva@escola.pr.gov.br | (43) 3420-1603'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Nelize Any Wisniewski | nelize@seed.pr.gov.br | (43) 3420-1667'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Fab??ola Heil de Ara??jo Barros | fabiolaheil@seed.pr.gov.br | (43) 3420-1668'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Wanessa Guimar??es Garcia | wanessaguimaraes@seed.pr.gov.br | (43) 3420-1669'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Cristiane Valeria Correia de Pazos Santos | crispazos@seed.pr.gov.br | (43) 3274-4469 - Arapongas'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Ivana Carobeli Telli | ivana_ivanilde@seed.pr.gov.br | (43) 3274-4469 - Arapongas'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Rosangela Camargo da Rocha | rosangelacamargo192@seed.pr.gov.br | (43) 3420-1605'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('Distribui????o de Aulas'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Simone Regina Mortean Silva | simone.mortean@escola.pr.gov.br | (43) 3420-1669'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Maria de F??tima dos Santos de Oliveira | santosoliveira.naria1511@escola.pr.gov.br | (43) 3420-1669'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Marlyn Ferreira DE Freitas da Silva | marlyn.silva@escola.pr.gov.br | (43) 3420-1603'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Nelize Any Wisniewski | nelize@seed.pr.gov.br | (43) 3420-1667'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Fab??ola Heil de Ara??jo Barros | fabiolaheil@seed.pr.gov.br | (43) 3420-1668'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Wanessa Guimar??es Garcia | wanessaguimaraes@seed.pr.gov.br | (43) 3420-1669'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Cristiane Valeria Correia de Pazos Santos | crispazos@seed.pr.gov.br | (43) 3274-4469 - Arapongas'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Ivana Carobeli Telli | ivana_ivanilde@seed.pr.gov.br | (43) 3274-4469 - Arapongas'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Rosangela Camargo da Rocha | rosangelacamargo192@seed.pr.gov.br | (43) 3420-1605'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('Movimenta????o de Pessoal'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Gisleine Martinelli Luz | gimartinelli@seed.pr.gov.br | (43) 3420-1604'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('Aposentadoria'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Mirian Carvalho Fernandes da Silva | mirianfernade@seed.pr.gov.br | (43) 3420-1607'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Ivone Sheila Vicente | isvb14@seed.pr.gov.br | (43) 3420-1670'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('Paran?? Previd??ncia'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Claudia Batistela | cladiabatistela@seed.pr.gov.br | (43) 3420-1662'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('Malote'),
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    'Reginaldo Aparecido Teston da Silva | reginaldoteston@escola.pr.gov.br | (43) 3420-1601'),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 18, 0, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusGeometry.lerp(
                                      BorderRadius.circular(10),
                                      BorderRadius.circular(10),
                                      5),
                                ),
                                width: MediaQuery.of(context).size.width > 850
                                    ? MediaQuery.of(context).size.width * 0.7
                                    : MediaQuery.of(context).size.width,
                                // height:
                                //     MediaQuery.of(context).size.height / 5.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AvisosNreComponent(
                                        label: "Atualiza????o Cadastral",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.atualizacaocadastral.pr.gov.br/prf/'))
                                            },
                                        image: 'assets/images/cadastro64.png'),
                                    AvisosNreComponent(
                                        label: "Formul??rios/Declara????es",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.educacao.pr.gov.br/Pagina/Formularios-e-Declaracoes'))
                                            },
                                        image: 'assets/images/email.png'),
                                    AvisosNreComponent(
                                        label: "PSS",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.educacao.pr.gov.br/Pagina/Processo-Seletivo-Simplificado-PSS'))
                                            },
                                        image:
                                            'assets/images/processo_seletivo64.png'),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 18, 0, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusGeometry.lerp(
                                      BorderRadius.circular(10),
                                      BorderRadius.circular(10),
                                      5),
                                ),
                                width: MediaQuery.of(context).size.width > 850
                                    ? MediaQuery.of(context).size.width * 0.7
                                    : MediaQuery.of(context).size.width,
                                // height:
                                //     MediaQuery.of(context).size.height / 5.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AvisosNreComponent(
                                        label: "Di??rio Oficial",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.imprensaoficial.pr.gov.br'))
                                            },
                                        image:
                                            'assets/images/diario_oficial64.png'),
                                    AvisosNreComponent(
                                        label: "Ordem de Servi??o",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.educacao.pr.gov.br/Pagina/Ordem-de-Servico'))
                                            },
                                        image:
                                            'assets/images/ordem_servico.jpg'),
                                    AvisosNreComponent(
                                        label: "Remo????o",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.educacao.pr.gov.br/Pagina/Remocao'))
                                            },
                                        image: 'assets/images/remocao64.png'),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 18, 0, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusGeometry.lerp(
                                      BorderRadius.circular(10),
                                      BorderRadius.circular(10),
                                      5),
                                ),
                                width: MediaQuery.of(context).size.width > 850
                                    ? MediaQuery.of(context).size.width * 0.7
                                    : MediaQuery.of(context).size.width,
                                // height:
                                //     MediaQuery.of(context).size.height / 5.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AvisosNreComponent(
                                        label: "Documentos necess??rios PSS",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.educacao.pr.gov.br/DocumentosContratacaoPSS'))
                                            },
                                        image:
                                            'assets/images/documentos_necessarios64.png'),
                                    AvisosNreComponent(
                                        label: "Paran?? Previd??ncia",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'http://www.paranaprevidencia.pr.gov.br'))
                                            },
                                        image:
                                            'assets/images/parana_previdencia64.png'),
                                    AvisosNreComponent(
                                        label: "Sistema de Assist??ncia ?? Sa??de",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'http://www.administracao.pr.gov.br/SAS'))
                                            },
                                        image: 'assets/images/sas64.png'),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 18, 0, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusGeometry.lerp(
                                      BorderRadius.circular(10),
                                      BorderRadius.circular(10),
                                      5),
                                ),
                                width: MediaQuery.of(context).size.width > 850
                                    ? MediaQuery.of(context).size.width * 0.7
                                    : MediaQuery.of(context).size.width,
                                // height:
                                //     MediaQuery.of(context).size.height / 5.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AvisosNreComponent(
                                        label: "E-Protocolo",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.eprotocolo.pr.gov.br/spiweb/consultarProtocoloDigital.do?action=iniciarProcesso'))
                                            },
                                        image: 'assets/images/consulta64.png'),
                                    AvisosNreComponent(
                                        label: "Per??cia M??dica",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.administracao.pr.gov.br/Recursos-Humanos/Pagina/Licencas-e-Afastamentos'))
                                            },
                                        image: 'assets/images/saude.png'),
                                    AvisosNreComponent(
                                        label: "Sistema RH Seed",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://auth-cs.identidadedigital.pr.gov.br/centralautenticacao/login.html?response_type=code&client_id=577bcc914f9e55d5e4e4f82f9f00e7d4&redirect_uri=http%3A%2F%2Fwww.rhseed.pr.gov.br&scope=central.cidadao.obterGruposSistema%20central.cidadao.solicitarAutoCadastro%20central.cidadao.consultar%20central.cidadao.desvincular.usuarios.grupo%20central.cidadao.vincular.usuarios.grupo%20centralcidadao.v1.cidadaos.cpf.get%20centralcidadao.v1.cidadaos.nome.get%20centralcidadao.v1.cidadaos.grupo.get&state=1664383361205&urlCert=https://certauth-cs.identidadedigital.pr.gov.br&dnsCidadao=https://cidadao-cs.identidadedigital.pr.gov.br/centralcidadao&loginPadrao=btnCentral&labelCentral=E-Mail,Login%20Sentinela&modulosDeAutenticacao=btnSentinela,btnEmail,btnCentral&urlLogo=http%3A%2F%2Fwww.rhseed.pr.gov.br%2Frhseed%2Fresources%2Fimages%2Flogo-sistema-grande.png&acesso=2113&tokenFormat=jwt&exibirLinkAutoCadastro=true&exibirLinkRecuperarSenha=true&exibirLinkAutoCadastroCertificado=false&captcha=false'))
                                            },
                                        image:
                                            'assets/images/documentos_oficiais64.png'),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 18, 0, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusGeometry.lerp(
                                      BorderRadius.circular(10),
                                      BorderRadius.circular(10),
                                      5),
                                ),
                                width: MediaQuery.of(context).size.width > 850
                                    ? MediaQuery.of(context).size.width * 0.7
                                    : MediaQuery.of(context).size.width,
                                // height:
                                //     MediaQuery.of(context).size.height / 5.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AvisosNreComponent(
                                        label: "Estatuto do Servidor",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'https://www.legislacao.pr.gov.br/legislacao/pesquisarAto.do?action=exibir&codAto=10297&indice=1&totalRegistros=1'))
                                            },
                                        image: 'assets/images/estatuto64.png'),
                                    AvisosNreComponent(
                                        label: "PRconsig",
                                        onTapped: () => {
                                              launchUrl(Uri.parse(
                                                  'http://www.administracao.pr.gov.br/Recursos-Humanos/Pagina/Consignacao-em-Folha-de-Pagamento'))
                                            },
                                        image: 'assets/images/prconsig64.png'),
                                  ],
                                ),
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
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
                                              fontWeight: FontWeight.bold),
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
                                          child: const Text('Localiza????o'),
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
                                              fontWeight: FontWeight.bold),
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
                                          child: const Text('Localiza????o'),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 12.0),
                                      child: Text(
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                                          child: const Text('Localiza????o'),
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
                                    Padding(
                                      padding: EdgeInsets.only(top: 12.0),
                                      child: Text(
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
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
                                          child: const Text('Localiza????o'),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
