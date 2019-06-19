import 'package:flutter/material.dart';
import 'home_page.dart';

class LogoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('images/samuraiLogo.png'),
          )
        ],
      ),
    );
  }
}

class EntradaEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //initialValue: 'sempre@algo.com',
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }
}

class EntradaSenha extends StatefulWidget {
  @override
  _EntradaSenhaState createState() => _EntradaSenhaState();
}

class _EntradaSenhaState extends State<EntradaSenha> {
  bool escondido = true;
  bool muda = true;
  void mudaIcone() {
    setState(() {
      escondido = !escondido;
      if (muda == true) {
        muda = false;
      } else {
        muda = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: muda,
      autofocus: false,
      //initialValue: 'password 1223',
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
            onPressed: mudaIcone,
            icon: escondido
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility)),
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        color: Color.alphaBlend(Colors.black, Colors.white),
        child: MaterialButton(
          minWidth: 200.0,
          height: 42,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          child: Text(
            'Log in',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu'),
          ),
        ),
      ),
    );
  }
}

class PerdeuSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        'Esqueceu senha',
        style: TextStyle(color: Colors.white, fontFamily: 'Ubuntu'),
      ),
      onPressed: () {},
    );
  }
}

class ReturnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.black,
        child: MaterialButton(
          height: 42,
          onPressed: () {
            //Navigator.of(context).pushNamed(Screen0.tag);
          },
          child: Text(
            'outro Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
