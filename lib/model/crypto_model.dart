class CryptoModel {
  String cryptoName;
  double price;
  String symbol;
  String image;
  int mrank;
  int mcap;
  int volume;

  CryptoModel(
      {required this.cryptoName,
      required this.price,
      required this.symbol,
      required this.image,
      required this.mrank,
      required this.mcap,
      required this.volume});

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return CryptoModel(
        cryptoName: json['name'],
        price: json['current_price'].toDouble(),
        symbol: json['symbol'],
        image: json['image'],
        mrank: json['market_cap_rank'],
        mcap: json['market_cap'],
        volume: json['total_volume']);
  }
}
