import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Color(0xFFF1F4F8),
          child: Center(
            child: Builder(
              builder: (context) => Image.asset(
                'assets/images/Untitled_design.png',
                width: 250,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'walletSetup': (data) async => WalletSetupWidget(),
  'chooseWalletLabel': (data) async => ChooseWalletLabelWidget(),
  'syncWallet': (data) async => SyncWalletWidget(
        walletLabel: getParameter(data, 'walletLabel'),
      ),
  'importWallet': (data) async => ImportWalletWidget(
        qrDara: getParameter(data, 'qrDara'),
      ),
  'mnemonicBackup': (data) async => MnemonicBackupWidget(),
  'loginScreen': (data) async => LoginScreenWidget(),
  'forgotPassword': (data) async => ForgotPasswordWidget(),
  'WaitingScreen': (data) async => WaitingScreenWidget(
        btcPrice: getParameter(data, 'btcPrice'),
        btcBalance: getParameter(data, 'btcBalance'),
      ),
  'welcomeScreen': (data) async => WelcomeScreenWidget(),
  'nonCustdialWalletScreen': (data) async => NonCustdialWalletScreenWidget(),
  'createWallet': (data) async => CreateWalletWidget(),
  'swapScreen': (data) async => NavBarPage(initialPage: 'swapScreen'),
  'swapStepOne': (data) async => SwapStepOneWidget(
        assetName: getParameter(data, 'assetName'),
        assetSymbol: getParameter(data, 'assetSymbol'),
        assetAmount: getParameter(data, 'assetAmount'),
        swapTo: getParameter(data, 'swapTo'),
        assetSmallSymbol: getParameter(data, 'assetSmallSymbol'),
        swapToSymbol: getParameter(data, 'swapToSymbol'),
        assetNetwork: getParameter(data, 'assetNetwork'),
        assetLogo: getParameter(data, 'assetLogo'),
      ),
  'confirmSwap': (data) async => ConfirmSwapWidget(
        assetName: getParameter(data, 'assetName'),
        assetSymbol: getParameter(data, 'assetSymbol'),
        assetSmallSymbol: getParameter(data, 'assetSmallSymbol'),
        assetLogo: getParameter(data, 'assetLogo'),
        assetSwapped: getParameter(data, 'assetSwapped'),
        assetNetwork: getParameter(data, 'assetNetwork'),
        swapToName: getParameter(data, 'swapToName'),
        swapToSymbol: getParameter(data, 'swapToSymbol'),
        youSend: getParameter(data, 'youSend'),
        youReceive: getParameter(data, 'youReceive'),
        payinAddress: getParameter(data, 'payinAddress'),
        payoutAddress: getParameter(data, 'payoutAddress'),
        transactionID: getParameter(data, 'transactionID'),
        txHash: getParameter(data, 'txHash'),
      ),
  'activityScreen': (data) async => NavBarPage(initialPage: 'activityScreen'),
  'swapActivityScreen': (data) async => SwapActivityScreenWidget(
        transactionID: getParameter(data, 'transactionID'),
        assetName: getParameter(data, 'assetName'),
        assetSymbol: getParameter(data, 'assetSymbol'),
        assetSmallSymbol: getParameter(data, 'assetSmallSymbol'),
        assetLogo: getParameter(data, 'assetLogo'),
        assetNetwork: getParameter(data, 'assetNetwork'),
        youSend: getParameter(data, 'youSend'),
        youReceive: getParameter(data, 'youReceive'),
        swapToName: getParameter(data, 'swapToName'),
        swapToSymbol: getParameter(data, 'swapToSymbol'),
        payinAddress: getParameter(data, 'payinAddress'),
        payoutAddress: getParameter(data, 'payoutAddress'),
        createdAt: getParameter(data, 'createdAt'),
        txHASH: getParameter(data, 'txHASH'),
        transactionStatus: getParameter(data, 'transactionStatus'),
      ),
  'completedSwap': (data) async => CompletedSwapWidget(
        assetName: getParameter(data, 'assetName'),
        assetSymbol: getParameter(data, 'assetSymbol'),
        assetSmallSymbol: getParameter(data, 'assetSmallSymbol'),
        assetNetwork: getParameter(data, 'assetNetwork'),
        assetLogo: getParameter(data, 'assetLogo'),
        swapToName: getParameter(data, 'swapToName'),
        swapToSymbol: getParameter(data, 'swapToSymbol'),
        youSend: getParameter(data, 'youSend'),
        youReceive: getParameter(data, 'youReceive'),
        payoutAddress: getParameter(data, 'payoutAddress'),
        transactionStatus: getParameter(data, 'transactionStatus'),
        txHash: getParameter(data, 'txHash'),
        createdAt: getParameter(data, 'createdAt'),
      ),
  'settingsScreen': (data) async => NavBarPage(initialPage: 'settingsScreen'),
  'feedbackScreen': (data) async => FeedbackScreenWidget(),
  'helpScreen': (data) async => HelpScreenWidget(),
  'addressesBook': (data) async => AddressesBookWidget(),
  'addAddress': (data) async => AddAddressWidget(),
  'aboutUS': (data) async => AboutUSWidget(),
  'addressAddedSuccess': (data) async => AddressAddedSuccessWidget(),
  'notificationCenterScreen': (data) async => NotificationCenterScreenWidget(),
  'sendBitcoin': (data) async => SendBitcoinWidget(
        data: getParameter(data, 'data'),
        btcPrice: getParameter(data, 'btcPrice'),
        btcBalance: getParameter(data, 'btcBalance'),
        unconfirmedBalance: getParameter(data, 'unconfirmedBalance'),
      ),
  'confirmTrasnaction': (data) async => ConfirmTrasnactionWidget(
        amount: getParameter(data, 'amount'),
        asset: getParameter(data, 'asset'),
        from: getParameter(data, 'from'),
        to: getParameter(data, 'to'),
        network: getParameter(data, 'network'),
        total: getParameter(data, 'total'),
        assetSymbol: getParameter(data, 'assetSymbol'),
      ),
  'successPayment': (data) async => SuccessPaymentWidget(
        btcAmount: getParameter(data, 'btcAmount'),
        usdBtcAmount: getParameter(data, 'usdBtcAmount'),
        toAddress: getParameter(data, 'toAddress'),
        txHash: getParameter(data, 'txHash'),
      ),
  'receiveBitcoin': (data) async => ReceiveBitcoinWidget(),
  'testScreen': (data) async => TestScreenWidget(),
  'userWallets': (data) async => UserWalletsWidget(),
  'walletInformations': (data) async => WalletInformationsWidget(
        extendedPublicKeys: getParameter(data, 'extendedPublicKeys'),
        privateKey: getParameter(data, 'privateKey'),
        mnemonic: getParameter(data, 'mnemonic'),
        walletBalance: getParameter(data, 'walletBalance'),
        currentAddress: getParameter(data, 'currentAddress'),
        walletLabel: getParameter(data, 'walletLabel'),
      ),
  'successPaymentCopy': (data) async => SuccessPaymentCopyWidget(
        btcAmount: getParameter(data, 'btcAmount'),
        usdBtcAmount: getParameter(data, 'usdBtcAmount'),
        toAddress: getParameter(data, 'toAddress'),
        txHash: getParameter(data, 'txHash'),
      ),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
