// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:local_auth/local_auth.dart';

Future<String> authenticateLocally(
    String localizedReason, bool biometricOnly, bool stickyAuth) async {
  try {
    final localAuthentication = LocalAuthentication();
    final isBiometricSupported = await localAuthentication.isDeviceSupported();
    final canCheckBiometrics = await localAuthentication.canCheckBiometrics;

    bool isAuthenticated = false;

    if (isBiometricSupported && canCheckBiometrics) {
      isAuthenticated = await localAuthentication.authenticate(
        localizedReason: localizedReason,
        options: AuthenticationOptions(
            biometricOnly: biometricOnly, stickyAuth: stickyAuth),
      );
      return "It worked!";
    } else {
      throw "isBiometricSupported: $isBiometricSupported, canCheckBiometrics: $canCheckBiometrics";
    }
  } catch (e) {
    return e.toString();
  }
}
