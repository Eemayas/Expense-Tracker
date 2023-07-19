// ignore_for_file: prefer_const_constructors

import 'package:expenses_tracker/Pages/expensesPage.dart';
import 'package:expenses_tracker/Pages/incomePage.dart';
import 'package:expenses_tracker/Pages/toPayPage.dart';
import 'package:expenses_tracker/Pages/toReceivePage.dart';
import 'package:expenses_tracker/constant.dart';
import 'package:expenses_tracker/Pages/dashboard.dart';
import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              color: Colors.white,
            ),
          )),
      initialRoute: Dashboard.id,
      routes: {
        Dashboard.id: (context) => const Dashboard(),
        IncomePage.id: (context) => const IncomePage(),
        ExpensePage.id: (context) => const ExpensePage(),
        ToPayPage.id: (context) => const ToPayPage(),
        ToReceivePage.id: (context) => const ToReceivePage(),
      },
      // home: const dashBoard()
    );
  }
}
