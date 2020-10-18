import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email address',
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 12.0),
                RaisedButton(
                  child: Text('Login'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('Create new account'),
                  onPressed: () {},
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
