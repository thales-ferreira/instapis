import 'package:flutter/material.dart';
import 'package:instapis/screens/feed_screen.dart';
import 'package:instapis/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(_email);
      print(_password);
      // Logging in the user [Firebase]
      Navigator.push(context, MaterialPageRoute(builder: (_) => FeedScreen(),),);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Instapis',
              style: TextStyle(
                fontFamily: 'Billabong',
                fontSize: 50.0,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 10.0,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      validator: (input) => !input.contains('@')
                          ? 'Please enter a valid email'
                          : null,
                      onSaved: (input) => _email = input,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 10.0,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      validator: (input) => input.length < 6
                          ? 'Must be at least 6 characters'
                          : null,
                      onSaved: (input) => _password = input,
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 250.0,
                    child: FlatButton(
                        onPressed: _submit,
                        color: Colors.blue,
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        )),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 250.0,
                    child: FlatButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpScreen(),),),
                      color: Colors.blue,
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Go to Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
