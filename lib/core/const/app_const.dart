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
      description:
          "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
    ),
    ProductModel(
      img: "${image}1.png",
      name: "SMITH - Trade ",
      price: "\$ 120",
      categoryName: "Road Helmet",
      isFavorite: true,
      index: 1,
      description: "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
    ),
    ProductModel(
      img: "${image}2.png",
      name: "PEUGEOT - LR01 ",
      price: "\$ 1,999.99",
      categoryName: "Road Bike",
      isFavorite: true,
      index: 2,
      description: "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
    ),
    ProductModel(
      img: "${image}2.png",
      name: "PEUGEOT - LR01 ",
      price: "\$ 1,999.99",
      categoryName: "Road Bike",
      isFavorite: false,
      index: 3,
      description: "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
    )
  ];

  static List<String> images = [
    "${image}Electric_Bicycle.png",
    "${image}Electric_Bicycle.png",
    "${image}robert-bye.png"
  ];
}
