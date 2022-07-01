import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../success_payment/success_payment_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmTrasnactionWidget extends StatefulWidget {
  const ConfirmTrasnactionWidget({
    Key key,
    this.amount,
    this.asset,
    this.from,
    this.to,
    this.network,
    this.total,
    this.assetSymbol,
  }) : super(key: key);

  final double amount;
  final String asset;
  final String from;
  final String to;
  final double network;
  final double total;
  final String assetSymbol;

  @override
  _ConfirmTrasnactionWidgetState createState() =>
      _ConfirmTrasnactionWidgetState();
}

class _ConfirmTrasnactionWidgetState extends State<ConfirmTrasnactionWidget> {
  ApiCallResponse sendBitcoin;
  ApiCallResponse sendForOne;
  dynamic customAction;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            '6nh1sl7i' /* Confirm trasnfer */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'IBM Plex Sans',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
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
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        '-${widget.amount.toString()} BTC',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'IBM Plex Sans',
                              fontSize: 33,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: AuthUserStreamWidget(
                      child: Text(
                        formatNumber(
                          functions.sendTransactionConfirmScreenMultiply(
                              widget.amount,
                              valueOrDefault(
                                  currentUserDocument?.btcPrice, 0.0)),
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.periodDecimal,
                          currency: '\$',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'IBM Plex Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'i07q5pgi' /* Asset */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          widget.asset,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '363trs6q' /* From */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          functions.firstAndLast(widget.from),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'ic4pwmsg' /* To */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          functions.firstAndLast(widget.to),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
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
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'n2paaeyr' /* Network fee */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'IBM Plex Sans',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Icon(
                                                Icons.info_outline_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        AuthUserStreamWidget(
                                          child: Text(
                                            formatNumber(
                                              functions.multiply(
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.favNetworkFee,
                                                      0),
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.btcPrice,
                                                      0.0)),
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.periodDecimal,
                                              currency: '\$',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto Mono',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '68qsggno' /* Total amount */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'IBM Plex Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        AuthUserStreamWidget(
                                          child: Text(
                                            formatNumber(
                                              functions.totalAmountSendBitTra(
                                                  widget.amount,
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.favNetworkFee,
                                                      0),
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.btcPrice,
                                                      0.0)),
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.periodDecimal,
                                              currency: '\$',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto Mono',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            customAction = await actions.totalAmount(
                              widget.amount,
                              valueOrDefault(
                                      currentUserDocument?.favNetworkFee, 0)
                                  .toDouble(),
                              valueOrDefault(currentUserDocument?.btc, 0.0),
                            );
                            _shouldSetState = true;
                            setState(
                                () => FFAppState().changeAmount = getJsonField(
                                      customAction,
                                      r'''$.changeAmount''',
                                    ));
                            setState(() => FFAppState().networkFee =
                                functions.intToDouble(valueOrDefault(
                                    currentUserDocument?.favNetworkFee, 0)));
                            setState(
                                () => FFAppState().sendAmount = getJsonField(
                                      customAction,
                                      r'''$.sendAmount''',
                                    ).toString());
                            if ((FFAppState().changeAmount) < 0.00003) {
                              sendForOne =
                                  await SendBitcoinForOneReciepientCall.call(
                                changeAddress: valueOrDefault(
                                    currentUserDocument?.activeAddress, ''),
                                changeKey: valueOrDefault(
                                    currentUserDocument?.activeKey, ''),
                                toAddress: widget.to,
                                toAmount: getJsonField(
                                  customAction,
                                  r'''$.sendAmount''',
                                ),
                              );
                              _shouldSetState = true;
                              if ((sendForOne?.succeeded ?? true)) {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.scale,
                                    alignment: Alignment.bottomCenter,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: SuccessPaymentWidget(
                                      btcAmount: getJsonField(
                                        customAction,
                                        r'''$.sendAmount''',
                                      ),
                                      usdBtcAmount: functions.multiply(
                                          getJsonField(
                                            customAction,
                                            r'''$.sendAmonut''',
                                          ),
                                          valueOrDefault(
                                              currentUserDocument?.btcUSD,
                                              0.0)),
                                      toAddress: widget.to,
                                      txHash: getJsonField(
                                        (sendForOne?.jsonBody ?? ''),
                                        r'''$.txId''',
                                      ).toString(),
                                    ),
                                  ),
                                  (r) => false,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Invalid Transaction, try again',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .warningBtnText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 1500),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .warningBackground,
                                  ),
                                );
                              }

                              if (_shouldSetState) setState(() {});
                              return;
                            } else {
                              sendBitcoin =
                                  await SendBitcoinTransactionCall.call(
                                senderAddress: valueOrDefault(
                                    currentUserDocument?.activeKey, ''),
                                senderKey: valueOrDefault(
                                    currentUserDocument?.activeKey, ''),
                                toAddress: widget.to,
                                amount: getJsonField(
                                  customAction,
                                  r'''$.sendAmonut''',
                                ),
                                changeAddress: valueOrDefault(
                                    currentUserDocument?.activeAddress, ''),
                                changeAmount: getJsonField(
                                  customAction,
                                  r'''$.changeAmount''',
                                ),
                              );
                              _shouldSetState = true;
                              if ((sendBitcoin?.succeeded ?? true)) {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.scale,
                                    alignment: Alignment.bottomCenter,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: SuccessPaymentWidget(
                                      btcAmount: getJsonField(
                                        customAction,
                                        r'''$.sendAmount''',
                                      ),
                                      usdBtcAmount: functions.multiply(
                                          getJsonField(
                                            customAction,
                                            r'''$.sendAmount''',
                                          ),
                                          valueOrDefault(
                                              currentUserDocument?.btcPrice,
                                              0.0)),
                                      toAddress: widget.to,
                                      txHash: getJsonField(
                                        (sendBitcoin?.jsonBody ?? ''),
                                        r'''$.txId''',
                                      ).toString(),
                                    ),
                                  ),
                                  (r) => false,
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Invalid Transaction, try again',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .warningBtnText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 1500),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .warningBackground,
                                  ),
                                );
                              }

                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            if (_shouldSetState) setState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            '4uprg1ym' /* Confirm */,
                          ),
                          options: FFButtonOptions(
                            width: 130,
                            height: 50,
                            color: FlutterFlowTheme.of(context).customColor1,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'IBM Plex Sans',
                                      color: Colors.white,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
