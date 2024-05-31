import 'package:flutter/material.dart';

class PortfolioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'User Status: Active',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Total Balance: \$5000',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Total Shares: 50',
          style: TextStyle(fontSize: 20),
        ),
        // Add more portfolio details here
      ],
    );
  }
}
