// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:flutter/services.dart';

Future<String> copiedtext() async {
  ClipboardData cdata = await Clipboard.getData(Clipboard.kTextPlain);
  String copiedtext = cdata.text;
  print(copiedtext);
  return copiedtext;
}
