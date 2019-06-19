import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() => runApp(Aula());

class Aula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        LoginPage.tag: (context) => LoginPage(),
        HomePage.tag: (context) => HomePage()
      },
      initialRoute: LoginPage.tag,
    );
  }
}
