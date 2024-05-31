import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BuySellWidget extends StatefulWidget {
  @override
  _BuySellWidgetState createState() => _BuySellWidgetState();
}

class _BuySellWidgetState extends State<BuySellWidget> {
  String _selectedStock = 'ABC Corp';
  int _quantity = 1;
  TextEditingController _quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButtonFormField<String>(
            value: _selectedStock,
            items: <String>['ABC Corp', 'XYZ Inc']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {},
          ),
          TextFormField(
            controller: _quantityController,
            decoration: InputDecoration(label: Text("quantity")),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lime,
                      foregroundColor: Colors.black),
                  onPressed: () {},
                  icon: Icon(Icons.add_box_rounded),
                  label: Text(
                    "BUY",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: 24,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      foregroundColor: Colors.black),
                  onPressed: () {},
                  icon: Icon(Icons.indeterminate_check_box_rounded),
                  label: Text(
                    "SELL",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ],
      )

          // children: <Widget>[
          //   DropdownButton<String>(
          //     value: _selectedStock,
          //     onChanged: (newValue) {
          //       setState(() {
          //         _selectedStock = newValue.toString();
          //       });
          //     },
          //   items: <String>['ABC Corp', 'XYZ Inc']
          //       .map<DropdownMenuItem<String>>((String value) {
          //     return DropdownMenuItem<String>(
          //       value: value,
          //       child: Text(value),
          //     );
          //   }).toList(),
          // ),
          //   TextField(
          //     decoration: InputDecoration(labelText: 'Quantity'),
          //     keyboardType: TextInputType.number,
          //     onChanged: (value) {
          //       setState(() {
          //         _quantity = int.parse(value);
          //       });
          //     },
          //   ),
          //   ElevatedButton(
          //     onPressed: () {
          //       // Implement buy/sell logic here
          //     },
          //     child: Text('Buy/Sell'),
          //   ),
          // ],
          ),
    );
  }
}
