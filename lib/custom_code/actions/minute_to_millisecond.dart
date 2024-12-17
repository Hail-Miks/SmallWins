// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> minuteToMillisecond(int? minute) async {
  // convert minute to millisecond

  if (minute == null) {
    throw ArgumentError('Minute cannot be null');
  }

  return minute * 60 * 1000;
}
