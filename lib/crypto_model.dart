class Crypto {
  final String name;
  final double priceUsd;

  Crypto({required this.name, required this.priceUsd});

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
      name: json['name'],
      priceUsd: double.parse(json['price_usd']),
    );
  }
}
