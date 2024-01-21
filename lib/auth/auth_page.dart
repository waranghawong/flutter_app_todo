import 'package:flutter/material.dart';
import 'package:flutter_app/screen/login.dart';
import 'package:flutter_app/screen/signup.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _Auth_PageState();
}

class _Auth_PageState extends State<AuthPage> {
  bool a = true;
  void to() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (a) {
      return LoginForm(to);
    } else {
      return SignupForm(to);
    }
  }
}
