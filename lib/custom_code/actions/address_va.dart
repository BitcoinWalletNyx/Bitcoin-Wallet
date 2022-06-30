// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:math' as math;

Future<bool> addressVa(String address) async {
  if (address.length < 25) {
    return false;
  }
  if (address.startsWith('3') ||
      address.startsWith('bc1') ||
      address.startsWith('1')) return true;
  return false;
}
