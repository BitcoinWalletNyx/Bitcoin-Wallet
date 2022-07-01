import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../swap_step_one/swap_step_one_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SwapScreenWidget extends StatefulWidget {
  const SwapScreenWidget({Key key}) : super(key: key);

  @override
  _SwapScreenWidgetState createState() => _SwapScreenWidgetState();
}

class _SwapScreenWidgetState extends State<SwapScreenWidget>
    with TickerProviderStateMixin {
  PagingController<DocumentSnapshot, SwappingAssetsRecord> _pagingController;
  Query _pagingQuery;
  List<StreamSubscription> _streamSubscriptions = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
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
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
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
            'wyd5pacn' /* Exchange */,
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
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '11hy65g5' /* Smart Pay-in */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'IBM Plex Sans',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'md69g2ms' /* you can top up your Bitcoin wa... */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'IBM Plex Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
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
                child: PagedListView<DocumentSnapshot<Object>,
                    SwappingAssetsRecord>(
                  pagingController: () {
                    final Query<Object> Function(Query<Object>) queryBuilder =
                        (swappingAssetsRecord) =>
                            swappingAssetsRecord.orderBy('assetNumber');
                    if (_pagingController != null) {
                      final query =
                          queryBuilder(SwappingAssetsRecord.collection);
                      if (query != _pagingQuery) {
                        // The query has changed
                        _pagingQuery = query;
                        _streamSubscriptions.forEach((s) => s?.cancel());
                        _streamSubscriptions.clear();
                        _pagingController.refresh();
                      }
                      return _pagingController;
                    }

                    _pagingController = PagingController(firstPageKey: null);
                    _pagingQuery =
                        queryBuilder(SwappingAssetsRecord.collection);
                    _pagingController.addPageRequestListener((nextPageMarker) {
                      querySwappingAssetsRecordPage(
                        queryBuilder: (swappingAssetsRecord) =>
                            swappingAssetsRecord.orderBy('assetNumber'),
                        nextPageMarker: nextPageMarker,
                        pageSize: 25,
                        isStream: true,
                      ).then((page) {
                        _pagingController.appendPage(
                          page.data,
                          page.nextPageMarker,
                        );
                        final streamSubscription =
                            page.dataStream?.listen((data) {
                          final itemIndexes = _pagingController.itemList
                              .asMap()
                              .map((k, v) => MapEntry(v.reference.id, k));
                          data.forEach((item) {
                            final index = itemIndexes[item.reference.id];
                            final items = _pagingController.itemList;
                            if (index != null) {
                              items.replaceRange(index, index + 1, [item]);
                              _pagingController.itemList = {
                                for (var item in items) item.reference: item
                              }.values.toList();
                            }
                          });
                          setState(() {});
                        });
                        _streamSubscriptions.add(streamSubscription);
                      });
                    });
                    return _pagingController;
                  }(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  builderDelegate:
                      PagedChildBuilderDelegate<SwappingAssetsRecord>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: SpinKitDualRing(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          size: 25,
                        ),
                      ),
                    ),

                    itemBuilder: (context, _, listViewIndex) {
                      final listViewSwappingAssetsRecord =
                          _pagingController.itemList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            width: double.infinity,
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    listViewSwappingAssetsRecord.assetImage,
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 8, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listViewSwappingAssetsRecord
                                                .assetName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Text(
                                              '${listViewSwappingAssetsRecord.assetBigSymbol}  (${listViewSwappingAssetsRecord.assetNetwork})',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              SwapStepOneWidget(
                                            assetName:
                                                listViewSwappingAssetsRecord
                                                    .assetName,
                                            assetSymbol:
                                                listViewSwappingAssetsRecord
                                                    .assetBigSymbol,
                                            assetAmount: 0.0,
                                            swapTo: 'Bitcoin',
                                            assetSmallSymbol:
                                                listViewSwappingAssetsRecord
                                                    .assetSmallSymbol,
                                            swapToSymbol: 'BTC',
                                            assetNetwork:
                                                listViewSwappingAssetsRecord
                                                    .assetNetwork,
                                            assetLogo:
                                                listViewSwappingAssetsRecord
                                                    .assetImage,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ).animated([animationsMap['listViewOnPageLoadAnimation']]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
