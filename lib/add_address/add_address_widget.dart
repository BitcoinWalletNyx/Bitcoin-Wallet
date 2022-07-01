import '../address_added_success/address_added_success_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAddressWidget extends StatefulWidget {
  const AddAddressWidget({Key key}) : super(key: key);

  @override
  _AddAddressWidgetState createState() => _AddAddressWidgetState();
}

class _AddAddressWidgetState extends State<AddAddressWidget> {
  TextEditingController addressController;
  TextEditingController addressLabelController;
  bool addressEQ;
  bool addressValid;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    addressController = TextEditingController();
    addressLabelController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            'x34tnxnh' /* Add to address book */,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: addressLabelController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'addressLabelController',
                                Duration(milliseconds: 100),
                                () => setState(() {}),
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'yev55pzj' /* Address Label */,
                                ),
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                hintText: FFLocalizations.of(context).getText(
                                  'pl2m39f3' /* My Binance address... */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                                fillColor:
                                    FlutterFlowTheme.of(context).lineColor,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    24, 24, 20, 24),
                                prefixIcon: Icon(
                                  Icons.book,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 20,
                                ),
                                suffixIcon: addressLabelController
                                        .text.isNotEmpty
                                    ? InkWell(
                                        onTap: () => setState(
                                          () => addressLabelController?.clear(),
                                        ),
                                        child: Icon(
                                          Icons.clear,
                                          color: Color(0xFF757575),
                                          size: 22,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: addressController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'addressController',
                                Duration(milliseconds: 100),
                                () => setState(() {}),
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'ko78f263' /* Address */,
                                ),
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                hintText: FFLocalizations.of(context).getText(
                                  '9gf69s4l' /* bc1qmust... */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                                fillColor:
                                    FlutterFlowTheme.of(context).lineColor,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    24, 24, 20, 24),
                                prefixIcon: Icon(
                                  FFIcons.kbitcoin,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 20,
                                ),
                                suffixIcon: addressController.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () => setState(
                                          () => addressController?.clear(),
                                        ),
                                        child: Icon(
                                          Icons.clear,
                                          color: Color(0xFF757575),
                                          size: 22,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'IBM Plex Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
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
                            if ((addressController.text != null) &&
                                (addressController.text != '')) {
                              if ((addressLabelController.text != null) &&
                                  (addressLabelController.text != '')) {
                                addressValid = await actions.addressVa(
                                  addressController.text,
                                );
                                _shouldSetState = true;
                                if ((addressValid) == true) {
                                  addressEQ = await actions.ifAddressEQQ(
                                    addressController.text,
                                    valueOrDefault(
                                        currentUserDocument?.activeAddress, ''),
                                  );
                                  _shouldSetState = true;
                                  if (addressEQ) {
                                    await Future.delayed(
                                        const Duration(milliseconds: 1));
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'You cannot add your active address',
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

                                  final addressBookCreateData =
                                      createAddressBookRecordData(
                                    addressLabel: addressLabelController.text,
                                    address: addressController.text,
                                    addressWlabel:
                                        '${addressLabelController.text} ${addressController.text}',
                                    createdAt: dateTimeFormat(
                                        'd/M h:mm a', getCurrentTimestamp),
                                  );
                                  await AddressBookRecord.createDoc(
                                          currentUserReference)
                                      .set(addressBookCreateData);

                                  final usersUpdateData = createUsersRecordData(
                                    addressCount: functions.swapCount(
                                        valueOrDefault(
                                            currentUserDocument?.addressCount,
                                            0)),
                                  );
                                  await currentUserReference
                                      .update(usersUpdateData);
                                  await Navigator.pushAndRemoveUntil(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.bottomToTop,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: AddressAddedSuccessWidget(),
                                    ),
                                    (r) => false,
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Invalid Bitcoin address',
                                        style: TextStyle(
                                          color: Color(0xFFB34949),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 1500),
                                      backgroundColor: Color(0xFFF5E5E4),
                                    ),
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Address Label is required',
                                      style: GoogleFonts.getFont(
                                        'IBM Plex Sans',
                                        color: Color(0xFFB34949),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 1500),
                                    backgroundColor: Color(0xFFF5E5E4),
                                  ),
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Address is required',
                                    style: GoogleFonts.getFont(
                                      'IBM Plex Sans',
                                      color: Color(0xFFB34949),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 1500),
                                  backgroundColor: Color(0xFFF5E5E4),
                                ),
                              );
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            if (_shouldSetState) setState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'o9drmvnj' /* Add */,
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
