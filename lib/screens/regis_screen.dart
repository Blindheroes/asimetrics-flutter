import 'package:asimetrics_game/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:asimetrics_game/services/auth_services.dart';

class RegisterScreen extends StatefulWidget {
  final Function toggleView;
  RegisterScreen(this.toggleView);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Asimectris Register',
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
            label: Text("Login"),
          ),
          SizedBox(
            width: 12,
          )
        ],
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
      body: Center(child: Text("regis here")),
    );
  }
}
