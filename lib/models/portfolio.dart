class Portfolio {
  String userId;
  Map<String, int> stocks;

  Portfolio({required this.userId, required this.stocks});

  factory Portfolio.fromMap(Map<String, dynamic> data, String documentId) {
    return Portfolio(
      userId: documentId,
      stocks: Map<String, int>.from(data['stocks']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'stocks': stocks,
    };
  }
}
