import '../components/wallet_setup_component_widget.dart';
import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletSetupWidget extends StatefulWidget {
  const WalletSetupWidget({Key key}) : super(key: key);

  @override
  _WalletSetupWidgetState createState() => _WalletSetupWidgetState();
}

class _WalletSetupWidgetState extends State<WalletSetupWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            '7y71s0jg' /* Wallet setup */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'IBM Plex Sans',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowLanguageSelector(
            width: 200,
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            borderColor: FlutterFlowTheme.of(context).primaryColor,
            dropdownIconColor: Colors.white,
            borderRadius: 0,
            textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            hideFlags: false,
            flagSize: 24,
            flagTextGap: 8,
            currentLanguage: FFLocalizations.of(context).languageCode,
            languages: FFLocalizations.languages(),
            onChanged: (lang) => setAppLanguage(context, lang),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: WalletSetupComponentWidget(),
        ),
      ),
    );
  }
}
