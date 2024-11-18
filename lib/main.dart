import 'package:firstapp/login/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String appTitle = "Caffe NeverLand";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.blue,
            titleTextStyle: TextStyle(
              color: Colors.white,
            )),
      ),
      home: LoginPage(),
    );
  }
}
