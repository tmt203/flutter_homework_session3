class Product {
  String imagePath;
  String iconPath;
  String name;
  double rates;
  int views;
  double cost;

  Product(this.imagePath, this.iconPath, this.name, this.rates, this.views,
      this.cost);

  static List<Product> fetchSpecialProduct() {
    return [
      Product("assets/images/jordan.png", "assets/icons/nike-icon.png",
          "Jordan 1 Retro High Tie Dye", 4.5, 1045, 123.45),
      Product("assets/images/adidas.png", "assets/icons/adidas-icon.png",
          "Jordan 1 Retro High Tie Dye", 4.5, 1045, 123.45),
      Product("assets/images/jordan.png", "assets/icons/nike-icon.png",
          "Jordan 1 Retro High Tie Dye", 4.5, 1045, 123.45),
    ];
  }

  static List<Product> fetchPopularProduct() {
    return [
      Product(
        "assets/images/popular1.png",
        "assets/icons/nike-icon.png",
        "Jordan 1 Retro High Tie Dye",
        4.5,
        1045,
        123.45,
      ),
      Product(
        "assets/images/popular2.png",
        "assets/icons/adidas-icon.png",
        "Jordan 1 Retro High Tie Dye",
        4.5,
        1045,
        123.45,
      ),
      Product(
        "assets/images/popular3.png",
        "assets/icons/nike-icon.png",
        "Jordan 1 Retro High Tie Dye",
        4.5,
        1045,
        123.45,
      ),
    ];
  }
}
