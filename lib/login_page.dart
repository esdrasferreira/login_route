import 'package:flutter/material.dart';
import 'fabrica_botoes.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1d1d),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            LogoLogin(),
            SizedBox(height: 50),
            EntradaEmail(),
            SizedBox(height: 8),
            EntradaSenha(),
            SizedBox(height: 24),
            LoginButton(),
            PerdeuSenha(),
          ],
        ),
      ),
    );
  }
}
