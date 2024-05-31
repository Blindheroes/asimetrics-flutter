import 'package:flutter/material.dart';

class ResearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Company: ABC Corp',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Price: \$100',
          style: TextStyle(fontSize: 20),
        ),
        // Add more companies and details here
      ],
    );
  }
}
