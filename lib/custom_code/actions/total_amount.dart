// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:math' as math;

Future<dynamic> totalAmount(
  double sendAmount,
  double networkFee,
  double balance,
) async {
  return {
    'sendAmount': sendAmount - networkFee / 100000000,
    'changeAmount': balance - sendAmount - networkFee / 100000000,
    'balance': balance
  };
}
