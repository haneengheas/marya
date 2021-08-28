import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget inputField(
      {String hintText = '', bool secure = false,required FormFieldValidator  validate}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: TextFormField(
        validator: validate,
        obscureText: secure,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: hintText),
      ),
    );
  }

  _validateForm() {
    if (_formKey.currentState!.validate()) {
      print('login');
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    inputField(
                        hintText: 'Email',
                        secure: false,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return 'Email Must be email';
                          } else if (value.length < 5) {
                            return 'email must be greater than 5 chars';
                          }
                        }),
                    inputField(
                        hintText: 'Password',
                        secure: true,
                        validate: (value) {
                          if (value.toString().isEmpty) {
                            return 'Password Must be email';
                          }
                        }),
                  ],
                )),
            InkWell(
              onTap: () {
                _validateForm();
              },
              child: Container(
                margin: EdgeInsets.only(top: 40),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.greenAccent),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
