// import 'package:asimetrics_game/models/player.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../models/player.dart';
// import '../models/stock.dart';
// import '../models/portfolio.dart';

// class TradeProvider with ChangeNotifier {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Player _user;
//   Player get user => _user;

//   Portfolio _portfolio;
//   Portfolio get portfolio => _portfolio;

//   List<Stock> _stocks = [];
//   List<Stock> get stocks => _stocks;

//   Future<void> fetchUser(String userId) async {
//     DocumentSnapshot userDoc = await _firestore.collection('users').doc(userId).get();
//     _user = Player.fromMap(userDoc.data(), userDoc.id);
//     notifyListeners();
//   }

//   Future<void> fetchPortfolio(String userId) async {
//     DocumentSnapshot portfolioDoc = await _firestore.collection('portfolios').doc(userId).get();
//     _portfolio = Portfolio.fromMap(portfolioDoc.data(), portfolioDoc.id);
//     notifyListeners();
//   }

//   Future<void> fetchStocks() async {
//     QuerySnapshot stockSnapshot = await _firestore.collection('stocks').get();
//     _stocks = stockSnapshot.docs.map((doc) => Stock.fromMap(doc.data(), doc.id)).toList();
//     notifyListeners();
//   }

//   Future<void> buyStock(String userId, String stockId, int quantity) async {
//     DocumentReference userDocRef = _firestore.collection('users').doc(userId);
//     DocumentReference portfolioDocRef = _firestore.collection('portfolios').doc(userId);
//     DocumentSnapshot stockDoc = await _firestore.collection('stocks').doc(stockId).get();
//     Stock stock = Stock.fromMap(stockDoc.data(), stockDoc.id);

//     _user.balance -= stock.price * quantity;
//     _portfolio.stocks[stockId] = (_portfolio.stocks[stockId] ?? 0) + quantity;

//     await userDocRef.update(_user.toMap());
//     await portfolioDocRef.update(_portfolio.toMap());

//     notifyListeners();
//   }

//   Future<void> sellStock(String userId, String stockId, int quantity) async {
//     DocumentReference userDocRef = _firestore.collection('users').doc(userId);
//     DocumentReference portfolioDocRef = _firestore.collection('portfolios').doc(userId);
//     DocumentSnapshot stockDoc = await _firestore.collection('stocks').doc(stockId).get();
//     Stock stock = Stock.fromMap(stockDoc.data(), stockDoc.id);

//     if (_portfolio.stocks[stockId] != null && _portfolio.stocks[stockId] >= quantity) {
//       _user.balance += stock.price * quantity;
//       _portfolio.stocks[stockId] -= quantity;
//       if (_portfolio.stocks[stockId] == 0) {
//         _portfolio.stocks.remove(stockId);
//       }

//       await userDocRef.update(_user.toMap());
//       await portfolioDocRef.update(_portfolio.toMap());

//       notifyListeners();
//     } else {
//       throw Exception('Insufficient stocks to sell');
//     }
//   }
// }
