import 'package:flutter/material.dart';
import 'package:asimetrics_game/services/auth_services.dart';

class LoginScreen extends StatefulWidget {
  final Function toggleView;
  LoginScreen(this.toggleView);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Auth auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Asimectris Login',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              widget.toggleView();
            },
            icon: Icon(Icons.person_2_outlined),
            label: Text("register"),
          ),
          SizedBox(
            width: 12,
          )
        ],
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            icon: Icon(Icons.people),
            label: const Text("Login with Google"),
            onPressed: () {
              // auth.signInWithGoogle();
            },
          ),
          SizedBox(
            width: 24,
          ),
          ElevatedButton(
            child: const Text("Login as anonymous"),
            onPressed: () {
              auth.loginAnonim();
            },
          ),
        ],
      )),
    );
  }
}
