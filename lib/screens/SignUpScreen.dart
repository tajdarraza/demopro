import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key, required this.title});

  final String title;
  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}
class _SignUpScreen extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Helllo Signup"),
      ),
    );
  }

}