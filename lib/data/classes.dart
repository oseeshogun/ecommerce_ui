class Cloth {
  final String title;
  final int prize;
  final String asset;
  final int? reduction;
  final String? next;

  Cloth({
    required this.title,
    required this.prize,
    required this.asset,
    this.next,
    this.reduction,
  });
}

class ShoppingCategory {
  final String name;

  ShoppingCategory(this.name);
}
