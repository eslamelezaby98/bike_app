class ProductModel {
  String img;
  String name;
  String price;
  String categoryName;
  bool isFavorite;
  int index;
  String? description;

  ProductModel({
    required this.img,
    required this.name,
    required this.price,
    required this.categoryName,
    required this.isFavorite,
    required this.index,
    this.description,
  });
}
