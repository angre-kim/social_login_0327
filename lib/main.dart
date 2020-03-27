import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Login",
        theme: ThemeData(
            primarySwatch: Colors.blue,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.deepOrangeAccent, elevation: 10),
            primaryColor: Colors.deepOrangeAccent),
        home: LoginPage());
  }
}
