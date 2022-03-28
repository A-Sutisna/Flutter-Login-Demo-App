import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home/home.dart';

import '../widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _obscureText = true;
  bool _isLoading = false;

  Widget _authtitle() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Login',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 3),
          Text('Enter your email & password'),
        ],
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      child: TextField(
        controller: _email,
        decoration: InputDecoration(hintText: 'Email'),
      ),
    );
  }

  Widget _inputPassword() {
    return Stack(
      children: <Widget>[
        Container(
          child: TextField(
            controller: _password,
            obscureText: _obscureText,
            decoration: InputDecoration(hintText: 'Password'),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey[600],
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        )
      ],
    );
  }

  Widget _forgotPassword() {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Text('Forgot Password ?'),
        ),
      ),
      onTap: () {
        print('Forgot Password');
      },
    );
  }

  Widget _inputSubmit() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          shape: StadiumBorder(),
          child: Text('Login'),
          onPressed: _loginsementara),
    );
  }

  Widget _textDivide() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'OR CONECT WITH',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _googleSignin() {
    return Container(
      width: double.infinity,
      child: RaisedButton.icon(
        shape: StadiumBorder(),
        icon: Icon(Icons.adb),
        label: Text('Google'),
        onPressed: () {},
      ),
    );
  }

  Widget _TextRegister() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Dont have an account yet ?'),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              print('Regster');
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: _isLoading
          ? wAppLoading()
          : Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _authtitle(),
                    _inputEmail(),
                    _inputPassword(),
                    _forgotPassword(),
                    _inputSubmit(),
                    _textDivide(),
                    _googleSignin(),
                    _TextRegister(),
                  ],
                ),
              )),
    );
  }

  void _loginsementara() async {
    setState(() {
      _isLoading = true;
    });

    if (_email.text == 'demo@gmail.com' && _password.text == '123123') {
      await Future.delayed(Duration(seconds: 2));

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } else {
      print('Gagal');
    }
  }
}
