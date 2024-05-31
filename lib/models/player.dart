class Player {
  String id;
  String name;
  double balance;

  Player({required this.id, required this.name, required this.balance});

  factory Player.fromMap(Map<String, dynamic> data, String documentId) {
    return Player(
      id: documentId,
      name: data['name'],
      balance: data['balance'].toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'balance': balance,
    };
  }
}
