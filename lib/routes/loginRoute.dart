// Login screen

import 'package:flutter/material.dart';

import 'package:markd/helpers/extras.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.fromLTRB(16, 100, 16, 0),
          child: ScrollConfiguration(
            behavior: DisableScrollGlow(),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.book,
                      size: 117.39,
                    ),
                    Text(
                      'markd.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36.0,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(36.5)),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        hintText: 'Username',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Padding(padding: EdgeInsets.all(7.5)),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: _toggle,
                            icon: new Opacity(opacity: 0.75, child: Text(
                              _obscureText ? 'SHOW'
                                  : 'HIDE',
                              style: TextStyle(fontSize: 11),
                              )
                            ),
                          )
                      ),
                      obscureText: _obscureText,
                      enableSuggestions: false,
                    ),
                    Padding(padding: EdgeInsets.all(11.5)),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (Route<dynamic> route) => false
                        );
                      },
                      color: Colors.black,
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(12.0)),
                    Center(
                      child: Text.rich(
                          TextSpan(
                              text: "Don\'t have an account?",
                              children: <TextSpan>[
                                TextSpan(text: ' Sign up Now', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))
                              ]
                          )
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
