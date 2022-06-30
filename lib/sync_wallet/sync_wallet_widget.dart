import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../mnemonic_backup/mnemonic_backup_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SyncWalletWidget extends StatefulWidget {
  const SyncWalletWidget({
    Key key,
    this.walletLabel,
  }) : super(key: key);

  final String walletLabel;

  @override
  _SyncWalletWidgetState createState() => _SyncWalletWidgetState();
}

class _SyncWalletWidgetState extends State<SyncWalletWidget> {
  ApiCallResponse btcPrice;
  String generatedMnemonic;
  ApiCallResponse wallet;
  ApiCallResponse depositAddress;
  ApiCallResponse privateKey;
  UserWalletsRecord createdWallet;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      btcPrice = await BitcoinPriceCall.call();
      generatedMnemonic = await actions.randomMnemonic();
      wallet = await ImportWalletCall.call(
        mnemonic: generatedMnemonic,
      );
      depositAddress = await BitcoinDepositAddressCall.call(
        xpub: getJsonField(
          (wallet?.jsonBody ?? ''),
          r'''$.xpub''',
        ).toString(),
      );
      privateKey = await BitcoinKeyCall.call(
        mnemonic: getJsonField(
          (wallet?.jsonBody ?? ''),
          r'''$.mnemonic''',
        ).toString(),
      );

      final userWalletsCreateData = createUserWalletsRecordData(
        walletLabel: widget.walletLabel,
        walletMnemonic: getJsonField(
          (wallet?.jsonBody ?? ''),
          r'''$.mnemonic''',
        ).toString(),
        walletExtendedPublicKey: getJsonField(
          (wallet?.jsonBody ?? ''),
          r'''$.xpub''',
        ).toString(),
        walletDepositAddress: getJsonField(
          (depositAddress?.jsonBody ?? ''),
          r'''$.address''',
        ).toString(),
        walletPrivateKey: getJsonField(
          (privateKey?.jsonBody ?? ''),
          r'''$.key''',
        ).toString(),
      );
      var userWalletsRecordReference =
          UserWalletsRecord.createDoc(currentUserReference);
      await userWalletsRecordReference.set(userWalletsCreateData);
      createdWallet = UserWalletsRecord.getDocumentFromData(
          userWalletsCreateData, userWalletsRecordReference);

      final usersUpdateData = createUsersRecordData(
        activeAddress: getJsonField(
          (depositAddress?.jsonBody ?? ''),
          r'''$.address''',
        ).toString(),
        activeKey: getJsonField(
          (privateKey?.jsonBody ?? ''),
          r'''$.key''',
        ).toString(),
        activeMnemonic: getJsonField(
          (wallet?.jsonBody ?? ''),
          r'''$.mnemonic''',
        ).toString(),
        btcPrice: getJsonField(
          (btcPrice?.jsonBody ?? ''),
          r'''$.USD''',
        ),
        walletLabel: widget.walletLabel,
        walletsCount: functions.swapCount(1),
      );
      await currentUserReference.update(usersUpdateData);
      await Navigator.pushAndRemoveUntil(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: Duration(milliseconds: 300),
          reverseDuration: Duration(milliseconds: 300),
          child: MnemonicBackupWidget(),
        ),
        (r) => false,
      );
    });
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
            '37iv5y40' /* Generate Bitcoin address */,
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
                    '3o9q9ps8' /* Please Wait... */,
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
