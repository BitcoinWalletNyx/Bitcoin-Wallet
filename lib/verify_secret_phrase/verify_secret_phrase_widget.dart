import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifySecretPhraseWidget extends StatefulWidget {
  const VerifySecretPhraseWidget({Key key}) : super(key: key);

  @override
  _VerifySecretPhraseWidgetState createState() =>
      _VerifySecretPhraseWidgetState();
}

class _VerifySecretPhraseWidgetState extends State<VerifySecretPhraseWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'zndls6uc' /* Verify Recovery Phrase */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'IBM Plex Sans',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
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
                          '7yu8z6vq' /* Tap the words to put them next... */,
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
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: textController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'textController',
                          Duration(milliseconds: 10),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'vybv6cbr' /* Enter your recovery phrase */,
                          ),
                          hintText: FFLocalizations.of(context).getText(
                            'pfl4bjlq' /* Verify your secret phrase */,
                          ),
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'IBM Plex Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x6F95A1AC),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x6F95A1AC),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).lineColor,
                          suffixIcon: textController.text.isNotEmpty
                              ? InkWell(
                                  onTap: () => setState(
                                    () => textController?.clear(),
                                  ),
                                  child: Icon(
                                    Icons.clear,
                                    color: Color(0xFF757575),
                                    size: 22,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'IBM Plex Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              lineHeight: 5,
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
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Wrap(
                                    spacing: 7,
                                    runSpacing: 7,
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 5, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
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
                                                                  fontSize: 16,
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: FFLocalizations.of(context).getText(
                                'j3luwzyu' /* Continue */,
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
                                      color:
                                          FlutterFlowTheme.of(context).btnText,
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
            ],
          ),
        ),
      ),
    );
  }
}
