import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  final String title;
  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              padding: const EdgeInsets.only(top: 200.0),
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Demo Pro',
                      style: TextStyle(color: Color(0xff137F76), fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(color: Color(0xff137F76), fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.teal, width: 1.5)),
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.black54),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusColor: Colors.teal,
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.teal, width: 1.5)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          print("Login Pressed");
                        },
                        style: const ButtonStyle(
                            foregroundColor:
                            MaterialStatePropertyAll(Colors.white),
                            backgroundColor:
                            MaterialStatePropertyAll(Colors.teal)),
                        child: const Text('Login'))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Do not have an account?'),
                    TextButton(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20, color: Colors.teal),
                      ),
                      onPressed: () {
                        print("Sign up Pressed");
                      },
                    )
                  ],
                ),
              ],
            )),

    );
    // TODO: implement build
  }
}
