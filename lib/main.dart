import 'package:asimetrics_game/homescreen.dart';

import 'package:asimetrics_game/services/auth_services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        StreamProvider.value(value: Auth().userStream, initialData: null)
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Asimectris',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage()
        // home: MyHomePage(),
        );
  }
}
