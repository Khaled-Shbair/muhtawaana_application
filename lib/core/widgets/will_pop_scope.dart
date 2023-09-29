import 'package:flutter/material.dart';

Widget willPopScope({required Widget child}) {
  return PopScope(
    canPop: false,
    child: child,
  );
}
