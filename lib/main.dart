import 'package:flutter/material.dart';
import 'package:task_3/Settings/changeNumber/change.dart';
import 'package:task_3/Settings/changeNumber/otp.dart';
import 'package:task_3/Settings/changeNumber/payment.dart';

import 'setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home:Settings(),
    );
  }
}


