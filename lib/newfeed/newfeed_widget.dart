import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../novapublicacao/novapublicacao_widget.dart';
import '../publicacao/publicacao_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NewfeedWidget extends StatefulWidget {
  const NewfeedWidget({Key key}) : super(key: key);

  @override
  _NewfeedWidgetState createState() => _NewfeedWidgetState();
}

class _NewfeedWidgetState extends State<NewfeedWidget> {
  String radioButtonValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Papo calcinha',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.add,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 400),
                  reverseDuration: Duration(milliseconds: 400),
                  child: NovapublicacaoWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 2,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFE0E3E7),
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://pbs.twimg.com/media/EEppTaDXoAAw-JA.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 1,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 340,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4F8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hellena C. ',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Text(
                          'Há 2 horas',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.scale,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 400),
                                reverseDuration: Duration(milliseconds: 400),
                                child: PublicacaoWidget(
                                  likeCounter: 0,
                                  commentCounter: 0,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'Oi, meninas! Queria relatos de quem não menstrua e toma ac contínuo. Prós, contras, etc... Tenho muita cólica e quero chegar munida de infos pra conversar com meu ginecologista',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                        Divider(),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ToggleIcon(
                              onPressed: () async {
                                setState(() =>
                                    FFAppState().like = !FFAppState().like);
                              },
                              value: FFAppState().like,
                              onIcon: Icon(
                                Icons.favorite_sharp,
                                color: Color(0xFFFF008B),
                                size: 25,
                              ),
                              offIcon: Icon(
                                Icons.favorite_border,
                                color: Color(0xFFFF008B),
                                size: 25,
                              ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                formatNumber(
                                  FFAppState().likeCounter,
                                  formatType: FormatType.compact,
                                ),
                                '502',
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            ToggleIcon(
                              onPressed: () async {
                                setState(() => FFAppState().comment =
                                    !FFAppState().comment);
                              },
                              value: FFAppState().comment,
                              onIcon: Icon(
                                Icons.mode_comment_rounded,
                                color: Color(0xFFFF008B),
                                size: 25,
                              ),
                              offIcon: Icon(
                                Icons.mode_comment_rounded,
                                color: Color(0xFFFF008B),
                                size: 25,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.scale,
                                    alignment: Alignment.bottomCenter,
                                    duration: Duration(milliseconds: 400),
                                    reverseDuration:
                                        Duration(milliseconds: 400),
                                    child: PublicacaoWidget(
                                      likeCounter: FFAppState().likeCounter,
                                      commentCounter:
                                          FFAppState().commentCounter,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                '${valueOrDefault<String>(
                                  formatNumber(
                                    FFAppState().commentCounter,
                                    formatType: FormatType.compact,
                                  ),
                                  '23',
                                )} comentários',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4F8),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4F8),
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://i.pinimg.com/236x/82/86/65/828665dcba7c8a977e1cc9456d895524.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 340,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Francesca S.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Text(
                              'Há 4 horas',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                            Text(
                              'Kkkkkkkkkk e ai meninas, ja aconteceu com vocês?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Image.network(
                              'https://scontent.fvcp2-1.fna.fbcdn.net/v/t39.30808-6/286275103_3130462310617925_2325718503188727799_n.jpg?stp=dst-jpg_p526x296&_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=saehbfdMNZIAX_XuEFo&_nc_ht=scontent.fvcp2-1.fna&oh=00_AT9ia6_bV5r9xIaLkykLaW8H-CIWdWPyn4BIWYUnDAqW6A&oe=62C683AC',
                              width: 300,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            Divider(),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ToggleIcon(
                                  onPressed: () async {
                                    setState(() => FFAppState().like2 =
                                        !FFAppState().like2);
                                  },
                                  value: FFAppState().like2,
                                  onIcon: Icon(
                                    Icons.favorite,
                                    color: Color(0xFFFF008B),
                                    size: 25,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: Color(0xFFFF008B),
                                    size: 25,
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    formatNumber(
                                      FFAppState().likeCounter2,
                                      formatType: FormatType.compact,
                                    ),
                                    '11222',
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                ToggleIcon(
                                  onPressed: () async {
                                    setState(() => FFAppState().comment =
                                        !FFAppState().comment);
                                  },
                                  value: FFAppState().comment,
                                  onIcon: Icon(
                                    Icons.mode_comment_rounded,
                                    color: Color(0xFFFF008B),
                                    size: 25,
                                  ),
                                  offIcon: Icon(
                                    Icons.mode_comment_rounded,
                                    color: Color(0xFFFF008B),
                                    size: 25,
                                  ),
                                ),
                                Text(
                                  '${formatNumber(
                                    FFAppState().commentCounter2,
                                    formatType: FormatType.compact,
                                  )} comentários',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4F8),
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(0),
                      ),
                      child: Image.network(
                        'https://i.etsystatic.com/35408289/r/il/a4cea4/3875004361/il_570xN.3875004361_5t1k.jpghttps://i.etsystatic.com/35408289/r/il/a4cea4/3875004361/il_570xN.3875004361_5t1k.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Container(
                    width: 340,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4F8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Luiza M.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                        ),
                        Text(
                          'Há 32 minutos',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                        Text(
                          'Meninas, qual a experiência de vocês com disco menstrual?',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Divider(),
                        FlutterFlowRadioButton(
                          options: [
                            'Nunca usei',
                            'Usei e recomendo',
                            'Usei e não recomendo'
                          ].toList(),
                          onChanged: (value) {
                            setState(() => radioButtonValue = value);
                          },
                          optionHeight: 25,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                          selectedTextStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFF008B),
                                  ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.vertical,
                          radioButtonColor: Color(0xFFFF008B),
                          inactiveRadioButtonColor: Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ],
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
