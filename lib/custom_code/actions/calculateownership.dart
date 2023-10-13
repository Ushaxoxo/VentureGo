// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> calculateownership(
  double? businessvalue,
  double? investment,
) async {
  if (businessvalue == null || investment == null || businessvalue == 0) {
    return 0.0; // Handle division by zero or null values as needed
  }

  // Calculate the result
  double result = investment / businessvalue;

  // Round to two decimal places
  double roundedResult = double.parse(result.toStringAsFixed(2));

  return roundedResult;
}
