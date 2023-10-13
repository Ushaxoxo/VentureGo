import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? calculateownersh(
  double? investment,
  double? businessvalue,
) {
  if (businessvalue == null || investment == null || businessvalue == 0) {
    return 0.0; // Handle division by zero or null values as needed
  }

  // Calculate the result
  double result = investment / businessvalue;

  // Round to two decimal places
  double roundedResult = double.parse(result.toStringAsFixed(2));

  return roundedResult;
}
