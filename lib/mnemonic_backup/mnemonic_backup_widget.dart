import '../auth/auth_util.dart';
import '../components/info_recovery_phrase_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MnemonicBackupWidget extends StatefulWidget {
  const MnemonicBackupWidget({Key key}) : super(key: key);

  @override
  _MnemonicBackupWidgetState createState() => _MnemonicBackupWidgetState();
}

class _MnemonicBackupWidgetState extends State<MnemonicBackupWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'ke73oode' /* Recovery Phrase Backup */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'IBM Plex Sans',
                color: Colors.white,
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
              Icons.info_outlined,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 30,
            ),
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: InfoRecoveryPhraseWidget(),
                    ),
                  );
                },
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'bo8x3bk6' /* Write down or copy these words... */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'IBM Plex Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Wrap(
                                  spacing: 7,
                                  runSpacing: 7,
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.center,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4l6ayxwq' /* 1 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word1''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'lav23bpt' /* 2 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word2''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'c1b3cvil' /* 3 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word3''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'm3lwmrzr' /* 4 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word4''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jktsbmgv' /* 5 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word5''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gb55qheq' /* 6 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word6''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'be0k6f4f' /* 7 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word7''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7jhnzg1k' /* 8 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word8''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6c0boqo1' /* 9 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word9''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'flvjo5am' /* 10 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word10''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jvcxdij2' /* 11 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word11''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .mnemonicBorderColor,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 5, 0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'l8s6ph73' /* 12 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      AuthUserStreamWidget(
                                                        child: Text(
                                                          getJsonField(
                                                            functions.splitMnemonicJSON(
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.activeMnemonic,
                                                                    '')),
                                                            r'''$.word12''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'IBM Plex Sans',
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 25, 15, 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                              child: InkWell(
                                onTap: () async {
                                  await actions.copyText(
                                    valueOrDefault(
                                        currentUserDocument?.activeMnemonic,
                                        ''),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Recovery Phrase Copied to clipboard',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 2000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.file_copy_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).navBarColor,
                                  size: 26,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await actions.copyText(
                                  valueOrDefault(
                                      currentUserDocument?.activeMnemonic, ''),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Recovery Phrase Copied to clipboard',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 2000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                  ),
                                );
                              },
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'n7ke6qx3' /* Copy to clipboard */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'IBM Plex Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .navBarColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).warningBackground,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 0, 5),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dhqt24il' /* Do not share your secret phras... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'IBM Plex Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .warningBtnText,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'mnp8nltx' /* If someone has your  recovery ... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'IBM Plex Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warningBtnText,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NavBarPage(
                                          initialPage: 'walletScreen'),
                                    ),
                                    (r) => false,
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  'jrsh0nin' /* Continue */,
                                ),
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 55,
                                  color:
                                      FlutterFlowTheme.of(context).customColor1,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'IBM Plex Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .btnText,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
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
            ],
          ),
        ),
      ),
    );
  }
}
