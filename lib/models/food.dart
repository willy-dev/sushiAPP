class Food {
  final String name;
  final String rating;
  final String imagePath;
  final double price;
  final bool isAvailable;

  Food({
    required this.name,
    required this.rating,
    required this.imagePath,
    required this.price,
    required this.isAvailable,
  });

  String get _name => name;
  String get _rating => rating;
  String get _imagePath => imagePath;
  double get _price => price;
}
