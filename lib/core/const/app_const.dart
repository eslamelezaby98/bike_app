import '../../views/main/model/product_model.dart';

class AppConst {
  //* assets
  static const String image = "assets/image/";
  static const String svg = "assets/svg/";

  static const List<String> horizontalListIcons = [
    "",
    "${svg}icon2.svg",
    "${svg}icon3.svg",
    "${svg}icon4.svg",
    "${svg}icon5.svg",
  ];
  static const List<String> bottomNavItems = [
    "${svg}bicycle.svg",
    "${svg}map.fill.svg",
    "${svg}cart.fill.svg",
    "${svg}person.fill.svg",
    "${svg}doc.text.fill.svg",
  ];
  static List<ProductModel> productsImages = [
    ProductModel(
      img: "${image}2.png",
      name: "PEUGEOT - LR01 ",
      price: "\$ 1,999.99",
      categoryName: "Road Bike",
      isFavorite: false,
      index: 0,
    ),
    ProductModel(
      img: "${image}1.png",
      name: "SMITH - Trade ",
      price: "\$ 120",
      categoryName: "Road Helmet",
      isFavorite: true,
      index: 1,
    ),
    ProductModel(
      img: "${image}2.png",
      name: "PEUGEOT - LR01 ",
      price: "\$ 1,999.99",
      categoryName: "Road Bike",
      isFavorite: true,
      index: 2,
    ),
    ProductModel(
      img: "${image}2.png",
      name: "PEUGEOT - LR01 ",
      price: "\$ 1,999.99",
      categoryName: "Road Bike",
      isFavorite: false,
      index: 3,
    )
  ];

  static List<String> images = [
    "${image}Electric_Bicycle.png",
    "${image}Electric_Bicycle.png",
    "${image}robert-bye.png"
  ];
}
