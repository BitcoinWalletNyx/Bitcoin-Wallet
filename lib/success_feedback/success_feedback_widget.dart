import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SuccessFeedbackWidget extends StatefulWidget {
  const SuccessFeedbackWidget({Key key}) : super(key: key);

  @override
  _SuccessFeedbackWidgetState createState() => _SuccessFeedbackWidgetState();
}

class _SuccessFeedbackWidgetState extends State<SuccessFeedbackWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).successBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.network(
                      'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                      frameRate: FrameRate(60),
                      repeat: false,
                      animate: true,
                    ),
                  ],
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'wwuh54vg' /* Thank you! 💙 */,
                ),
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'IBM Plex Sans',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontSize: 32,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '53gqbfaa' /* Your feedback has been sent to... */,
                  ),
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'IBM Plex Sans',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: NavBarPage(initialPage: 'walletScreen'),
                              ),
                              (r) => false,
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'e3qflwxm' /* Continue */,
                          ),
                          options: FFButtonOptions(
                            width: 170,
                            height: 50,
                            color: FlutterFlowTheme.of(context).customColor1,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'IBM Plex Sans',
                                  color: FlutterFlowTheme.of(context).btnText,
                                ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 30,
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
    );
  }
}
