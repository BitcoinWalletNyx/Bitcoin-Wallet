import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../confirm_swap/confirm_swap_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SwapStepOneWidget extends StatefulWidget {
  const SwapStepOneWidget({
    Key key,
    this.assetName,
    this.assetSymbol,
    this.assetAmount,
    this.swapTo,
    this.assetSmallSymbol,
    this.swapToSymbol,
    this.assetNetwork,
    this.assetLogo,
  }) : super(key: key);

  final String assetName;
  final String assetSymbol;
  final double assetAmount;
  final String swapTo;
  final String assetSmallSymbol;
  final String swapToSymbol;
  final String assetNetwork;
  final String assetLogo;

  @override
  _SwapStepOneWidgetState createState() => _SwapStepOneWidgetState();
}

class _SwapStepOneWidgetState extends State<SwapStepOneWidget> {
  ApiCallResponse createExchangeTransaction;
  ApiCallResponse minimumExchange;
  TextEditingController amountController;
  ApiCallResponse estimatedAmount;
  ApiCallResponse minAmount;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      minAmount = await MinimumExchangeAmountCall.call(
        from: widget.assetSmallSymbol,
      );
      estimatedAmount = await GetEstimatedExchangeAmountCall.call(
        from: widget.assetSmallSymbol,
        sendAmount: 1.0,
      );
      setState(() => FFAppState().currentMinAmount = getJsonField(
            (minAmount?.jsonBody ?? ''),
            r'''$.minAmount''',
          ));
      setState(() => FFAppState().currentExchangeRate = getJsonField(
            (estimatedAmount?.jsonBody ?? ''),
            r'''$.estimatedAmount''',
          ));
    });

    amountController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Swap ${widget.assetSymbol} for BTC',
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      widget.assetLogo,
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        '${widget.assetName} (${widget.assetNetwork})',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'IBM Plex Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 17,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'vvakue4r' /* to Bitcoin (BTC) */,
                        ),
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
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: amountController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'amountController',
                          Duration(milliseconds: 1000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Amount ${widget.assetName}',
                          labelStyle: FlutterFlowTheme.of(context).bodyText2,
                          hintText: 'Enter ${widget.assetSymbol} amount ',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).lineColor,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                          prefixIcon: Icon(
                            Icons.money_sharp,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto Mono',
                              fontSize: 16,
                            ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
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
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'whfre1je' /* Rate */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'IBM Plex Sans',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if ((estimatedAmount?.succeeded ??
                                                      true) ??
                                                  true)
                                                Text(
                                                  '1 ${widget.assetSymbol} ≈ ${FFAppState().currentExchangeRate.toString()} BTC',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'IBM Plex Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Color(0x3295A1AC),
                                    ),
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
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '79vlhmlx' /* Minimum amount */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'IBM Plex Sans',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if ((minAmount?.succeeded ??
                                                      true) ??
                                                  true)
                                                Text(
                                                  '${FFAppState().currentMinAmount.toString()} ${widget.assetSymbol}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'IBM Plex Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
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
                          var _shouldSetState = false;
                          createExchangeTransaction =
                              await CreateSwapTransactionCall.call(
                            from: widget.assetSmallSymbol,
                            amount: double.parse(amountController.text),
                            toAddress: valueOrDefault(
                                currentUserDocument?.activeAddress, ''),
                          );
                          _shouldSetState = true;
                          if ((createExchangeTransaction?.succeeded ?? true)) {
                            await Future.delayed(
                                const Duration(milliseconds: 1));
                          } else {
                            minimumExchange =
                                await MinimumExchangeAmountCall.call(
                              from: widget.assetSmallSymbol,
                            );
                            _shouldSetState = true;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Minimum amount ${getJsonField(
                                    (minimumExchange?.jsonBody ?? ''),
                                    r'''$.minAmount''',
                                  ).toString()} ${widget.assetSymbol}',
                                  style: TextStyle(
                                    color: Color(0xFFB34949),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                duration: Duration(milliseconds: 1000),
                                backgroundColor: Color(0xFFF5E5E4),
                              ),
                            );
                            if (_shouldSetState) setState(() {});
                            return;
                          }

                          final userActivityCreateData =
                              createUserActivityRecordData(
                            transactionType: 'Swap',
                            transactionTxHash: 'In process',
                            transactionId: getJsonField(
                              (createExchangeTransaction?.jsonBody ?? ''),
                              r'''$.id''',
                            ).toString(),
                            swapFrom: widget.assetName,
                            swapTo: 'Bitcoin',
                            swapAmount: double.parse(amountController.text),
                            tokenSwappedLogo: widget.assetLogo,
                            estimatedReceived: getJsonField(
                              (createExchangeTransaction?.jsonBody ?? ''),
                              r'''$.amount''',
                            ),
                            transactionStatus: 'waiting',
                            payInAddress: getJsonField(
                              (createExchangeTransaction?.jsonBody ?? ''),
                              r'''$.payinAddress''',
                            ).toString(),
                            payOutAddress: getJsonField(
                              (createExchangeTransaction?.jsonBody ?? ''),
                              r'''$.payoutAddress''',
                            ).toString(),
                            createdAt: dateTimeFormat(
                                'd/M h:mm a', getCurrentTimestamp),
                            tokenNetwork: widget.assetNetwork,
                            tokenSmallSymbol: widget.assetSmallSymbol,
                            tokenSymbol: widget.assetSymbol,
                            swapToSymbol: widget.swapToSymbol,
                          );
                          await UserActivityRecord.createDoc(
                                  currentUserReference)
                              .set(userActivityCreateData);

                          final usersUpdateData = createUsersRecordData(
                            swapActivityCount: functions.swapCount(1),
                          );
                          await currentUserReference.update(usersUpdateData);
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: ConfirmSwapWidget(
                                assetName: widget.assetName,
                                assetSymbol: widget.assetSymbol,
                                assetSmallSymbol: widget.assetSmallSymbol,
                                assetSwapped: widget.assetAmount.toString(),
                                assetNetwork: widget.assetNetwork,
                                swapToName: 'Bitcoin',
                                swapToSymbol: 'BTC',
                                youSend: double.parse(amountController.text),
                                youReceive: getJsonField(
                                  (createExchangeTransaction?.jsonBody ?? ''),
                                  r'''$.amount''',
                                ),
                                payinAddress: getJsonField(
                                  (createExchangeTransaction?.jsonBody ?? ''),
                                  r'''$.payinAddress''',
                                ).toString(),
                                payoutAddress: getJsonField(
                                  (createExchangeTransaction?.jsonBody ?? ''),
                                  r'''$.payoutAddress''',
                                ).toString(),
                                transactionID: getJsonField(
                                  (createExchangeTransaction?.jsonBody ?? ''),
                                  r'''$.id''',
                                ).toString(),
                              ),
                            ),
                          );
                          if (_shouldSetState) setState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'f7645qxh' /* Continue */,
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
                          elevation: 0,
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
    );
  }
}
