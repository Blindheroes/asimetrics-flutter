class Stock {
  String id;
  String name;
  double price;

  Stock({required this.id, required this.name, required this.price});

  factory Stock.fromMap(Map<String, dynamic> data, String documentId) {
    return Stock(
      id: documentId,
      name: data['name'],
      price: data['price'].toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
    };
  }
}
