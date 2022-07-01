import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SuccessPaymentWidget extends StatefulWidget {
  const SuccessPaymentWidget({
    Key key,
    this.btcAmount,
    this.usdBtcAmount,
    this.toAddress,
    this.txHash,
  }) : super(key: key);

  final double btcAmount;
  final double usdBtcAmount;
  final String toAddress;
  final String txHash;

  @override
  _SuccessPaymentWidgetState createState() => _SuccessPaymentWidgetState();
}

class _SuccessPaymentWidgetState extends State<SuccessPaymentWidget> {
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '-${widget.btcAmount.toString()} BTC',
                      style: FlutterFlowTheme.of(context).title2.override(
                            fontFamily: 'IBM Plex Sans',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'to ${functions.firstAndLast(widget.toAddress)}',
                      style: FlutterFlowTheme.of(context).title2.override(
                            fontFamily: 'IBM Plex Sans',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
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
                  '3p7txg3q' /* Successful Payment */,
                ),
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'IBM Plex Sans',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontSize: 32,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 12, 25, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'lgcigmqb' /* balance will be updated as soo... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'IBM Plex Sans',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
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
                          await launchURL(
                              'https://mempool.space/tx/${widget.txHash}');
                        },
                        text: FFLocalizations.of(context).getText(
                          'z3r1tkg6' /* View on Explorer */,
                        ),
                        icon: Icon(
                          Icons.open_in_new_rounded,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 130,
                          height: 50,
                          color: FlutterFlowTheme.of(context).successBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'IBM Plex Sans',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                        showLoadingIndicator: false,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child:
                                      NavBarPage(initialPage: 'walletScreen'),
                                ),
                                (r) => false,
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'hwqi8ovi' /* Continue */,
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
                            showLoadingIndicator: false,
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
      ),
    );
  }
}
