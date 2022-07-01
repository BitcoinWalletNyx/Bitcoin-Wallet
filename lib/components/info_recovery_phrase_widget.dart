import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoRecoveryPhraseWidget extends StatefulWidget {
  const InfoRecoveryPhraseWidget({Key key}) : super(key: key);

  @override
  _InfoRecoveryPhraseWidgetState createState() =>
      _InfoRecoveryPhraseWidgetState();
}

class _InfoRecoveryPhraseWidgetState extends State<InfoRecoveryPhraseWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      thickness: 6,
                      indent: 160,
                      endIndent: 160,
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.save_rounded,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 90,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 3),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'h526lg7v' /* Recovery Phrase */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'IBM Plex Sans',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  FFLocalizations.of(context).getText(
                    'a2bjp0lr' /* The recovery phrase is a cruci... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'IBM Plex Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
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
                    Navigator.pop(context);
                  },
                  text: FFLocalizations.of(context).getText(
                    'ks3wu81m' /* I Understand */,
                  ),
                  options: FFButtonOptions(
                    width: 170,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
