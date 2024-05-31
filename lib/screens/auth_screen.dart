import 'package:asimetrics_game/screens/login_screen.dart';
import 'package:asimetrics_game/screens/regis_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showRegister = false;

  void toggleView() {
    setState(() {
      showRegister = !showRegister;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    if (showRegister) {
      return Container(child: RegisterScreen(toggleView));
    } else {
      return Container(child: LoginScreen(toggleView));
    }
  }
}
