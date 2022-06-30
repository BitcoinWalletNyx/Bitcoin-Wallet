import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WaitingScreenWidget extends StatefulWidget {
  const WaitingScreenWidget({
    Key key,
    this.btcPrice,
    this.btcBalance,
  }) : super(key: key);

  final double btcPrice;
  final int btcBalance;

  @override
  _WaitingScreenWidgetState createState() => _WaitingScreenWidgetState();
}

class _WaitingScreenWidgetState extends State<WaitingScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Lottie.network(
                    'https://assets5.lottiefiles.com/private_files/lf30_8vhnbghs.json',
                    width: 100,
                    height: 75,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'baox5fn9' /* Synchronizing... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'IBM Plex Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
