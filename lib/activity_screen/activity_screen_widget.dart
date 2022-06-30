import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../completed_swap/completed_swap_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../swap_activity_screen/swap_activity_screen_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ActivityScreenWidget extends StatefulWidget {
  const ActivityScreenWidget({Key key}) : super(key: key);

  @override
  _ActivityScreenWidgetState createState() => _ActivityScreenWidgetState();
}

class _ActivityScreenWidgetState extends State<ActivityScreenWidget>
    with TickerProviderStateMixin {
  ApiCallResponse transactionStatus;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 45),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'listViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 45),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
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
            'ncobpcmj' /* Activity */,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if ((valueOrDefault(
                          currentUserDocument?.swapActivityCount, 0)) <=
                      0)
                    AuthUserStreamWidget(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Lottie.network(
                                    'https://assets5.lottiefiles.com/packages/lf20_heejrebm.json',
                                    width: 150,
                                    height: 130,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 50, 0, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'a80oscdl' /* No activity */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'IBM Plex Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 18,
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
                ],
              ),
              if ((valueOrDefault(currentUserDocument?.swapActivityCount, 0)) >=
                  1)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 8),
                  child: AuthUserStreamWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '786lcys8' /* Exchange Activity */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'IBM Plex Sans',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ).animated([animationsMap['rowOnPageLoadAnimation']]),
                  ),
                ),
              if ((valueOrDefault(currentUserDocument?.swapActivityCount, 0)) >=
                  1)
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: AuthUserStreamWidget(
                      child: StreamBuilder<List<UserActivityRecord>>(
                        stream: queryUserActivityRecord(
                          parent: currentUserReference,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 25,
                                height: 25,
                                child: SpinKitDualRing(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 25,
                                ),
                              ),
                            );
                          }
                          List<UserActivityRecord>
                              listViewUserActivityRecordList = snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewUserActivityRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewUserActivityRecord =
                                  listViewUserActivityRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 8, 16, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x2F1D2429),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            listViewUserActivityRecord
                                                .tokenSwappedLogo,
                                            width: 35,
                                            height: 35,
                                            fit: BoxFit.contain,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 8, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '${'${listViewUserActivityRecord.swapFrom} to Bitcoin'}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 4, 0, 0),
                                                    child: Text(
                                                      '${listViewUserActivityRecord.transactionStatus} - ${listViewUserActivityRecord.createdAt}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 15,
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 7, 0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Color(0x4757636C),
                                              borderRadius: 12,
                                              borderWidth: 1,
                                              buttonSize: 40,
                                              icon: Icon(
                                                Icons.delete_outline_rounded,
                                                color: Color(0xFFC10200),
                                                size: 22,
                                              ),
                                              onPressed: () async {
                                                final usersUpdateData =
                                                    createUsersRecordData(
                                                  swapActivityCount: functions
                                                      .swapCountMinus(1),
                                                );
                                                await currentUserReference
                                                    .update(usersUpdateData);
                                                await listViewUserActivityRecord
                                                    .reference
                                                    .delete();
                                              },
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Color(0x4757636C),
                                            borderRadius: 12,
                                            borderWidth: 1,
                                            buttonSize: 40,
                                            icon: Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF57636C),
                                              size: 22,
                                            ),
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              transactionStatus =
                                                  await SwapTransactionStatusCall
                                                      .call(
                                                transactionId:
                                                    listViewUserActivityRecord
                                                        .transactionId,
                                              );
                                              _shouldSetState = true;
                                              if ((getJsonField(
                                                    (transactionStatus
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.payoutHash''',
                                                  ) !=
                                                  null)) {
                                                final userActivityUpdateData =
                                                    createUserActivityRecordData(
                                                  transactionStatus:
                                                      getJsonField(
                                                    (transactionStatus
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.status''',
                                                  ).toString(),
                                                  transactionTxHash:
                                                      getJsonField(
                                                    (transactionStatus
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.payinHash''',
                                                  ).toString(),
                                                );
                                                await listViewUserActivityRecord
                                                    .reference
                                                    .update(
                                                        userActivityUpdateData);
                                                await Navigator
                                                    .pushAndRemoveUntil(
                                                  context,
                                                  PageTransition(
                                                    type: PageTransitionType
                                                        .scale,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    duration: Duration(
                                                        milliseconds: 300),
                                                    reverseDuration: Duration(
                                                        milliseconds: 300),
                                                    child: CompletedSwapWidget(
                                                      assetName:
                                                          listViewUserActivityRecord
                                                              .swapFrom,
                                                      assetSymbol:
                                                          listViewUserActivityRecord
                                                              .tokenSymbol,
                                                      assetSmallSymbol:
                                                          listViewUserActivityRecord
                                                              .tokenSmallSymbol,
                                                      assetNetwork:
                                                          listViewUserActivityRecord
                                                              .tokenNetwork,
                                                      assetLogo:
                                                          listViewUserActivityRecord
                                                              .tokenSwappedLogo,
                                                      swapToName: 'Bitcoin',
                                                      swapToSymbol: 'BTC',
                                                      youSend:
                                                          listViewUserActivityRecord
                                                              .swapAmount,
                                                      youReceive:
                                                          listViewUserActivityRecord
                                                              .estimatedReceived
                                                              .toString(),
                                                      payoutAddress:
                                                          listViewUserActivityRecord
                                                              .payOutAddress,
                                                      transactionStatus:
                                                          getJsonField(
                                                        (transactionStatus
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.status''',
                                                      ).toString(),
                                                      txHash: getJsonField(
                                                        (transactionStatus
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.payinHash''',
                                                      ).toString(),
                                                      createdAt:
                                                          listViewUserActivityRecord
                                                              .createdAt,
                                                    ),
                                                  ),
                                                  (r) => false,
                                                );
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              } else {
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 1));
                                              }

                                              final userActivityUpdateData =
                                                  createUserActivityRecordData(
                                                transactionStatus: getJsonField(
                                                  (transactionStatus
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.status''',
                                                ).toString(),
                                              );
                                              await listViewUserActivityRecord
                                                  .reference
                                                  .update(
                                                      userActivityUpdateData);
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SwapActivityScreenWidget(
                                                    transactionID:
                                                        listViewUserActivityRecord
                                                            .transactionId,
                                                    assetName:
                                                        listViewUserActivityRecord
                                                            .swapFrom,
                                                    assetSymbol:
                                                        listViewUserActivityRecord
                                                            .tokenSymbol,
                                                    assetSmallSymbol:
                                                        listViewUserActivityRecord
                                                            .tokenSmallSymbol,
                                                    assetLogo:
                                                        listViewUserActivityRecord
                                                            .tokenSwappedLogo,
                                                    assetNetwork:
                                                        listViewUserActivityRecord
                                                            .tokenNetwork,
                                                    youSend:
                                                        listViewUserActivityRecord
                                                            .swapAmount,
                                                    youReceive:
                                                        listViewUserActivityRecord
                                                            .estimatedReceived,
                                                    swapToName: 'Bitcoin',
                                                    swapToSymbol: 'BTC',
                                                    payinAddress:
                                                        listViewUserActivityRecord
                                                            .payInAddress,
                                                    payoutAddress:
                                                        listViewUserActivityRecord
                                                            .payOutAddress,
                                                    createdAt:
                                                        listViewUserActivityRecord
                                                            .createdAt,
                                                    txHASH: getJsonField(
                                                      (transactionStatus
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.payinHash''',
                                                    ).toString(),
                                                  ),
                                                ),
                                              );
                                              if (_shouldSetState)
                                                setState(() {});
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).animated(
                              [animationsMap['listViewOnPageLoadAnimation']]);
                        },
                      ),
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
