import 'package:dayofflutter/pages/home_page.dart';
import 'package:dayofflutter/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),

      // initialRoute: "/home",

      routes: {
        "/" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
      },

    );
  }
}