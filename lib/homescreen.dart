import 'package:asimetrics_game/screens/auth_screen.dart';
import 'package:asimetrics_game/screens/buy_sell_screen.dart';
import 'package:asimetrics_game/screens/portfolio_screen.dart';
import 'package:asimetrics_game/screens/research_screen.dart';
import 'package:asimetrics_game/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    PortfolioScreen(),
    ResearchScreen(),
    BuySellScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    Auth auth = Auth();

    if (user != null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Asimectris',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
          actions: [
            ElevatedButton.icon(
                onPressed: () {
                  auth.logOut();
                },
                icon: Icon(Icons.exit_to_app_outlined),
                label: Text("Logout"))
          ],
          backgroundColor: Colors.amberAccent,
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Research',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              label: 'Buy/Sell',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      );
    } else {
      return AuthScreen();
    }
  }
}
