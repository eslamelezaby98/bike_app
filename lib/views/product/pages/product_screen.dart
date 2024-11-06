import 'package:bike_app/core/const/app_const.dart';
import 'package:bike_app/core/theme/app_color.dart';
import 'package:bike_app/core/utils/app_uitls.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool _openDescription = false;
  int position = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    List<Widget> items = [];
    for (var element in AppConst.images) {
      items.add(Image.asset(
        element,
        fit: BoxFit.cover,
      ));
    }
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomSheet: buildBottomSheet(),
          body: Material(
            color: AppColor.black70,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset(
                    "${AppConst.svg}product_bkg.svg",
                  ),
                ),
                SafeArea(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppUtils.defaultPadding,
                    ),
                    children: [
                      //* app bar
                      Column(
                        children: [
                          const SizedBox(height: AppUtils.defaultSpace),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: AppColor.searchColor,
                                  ),
                                ),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      if (!_openDescription) {
                                        Navigator.pop(context);
                                      } else {
                                        setState(() {
                                          _openDescription = !_openDescription;
                                        });
                                      }
                                    },
                                    child: Icon(
                                      _openDescription
                                          ? Icons.keyboard_arrow_down_sharp
                                          : Icons.keyboard_arrow_left,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ),
                              const Expanded(
                                child: Text(
                                  "PEUGEOT - LR01",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //* products images
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: _openDescription ? 0 : height * .05,
                            ),
                            child: AnimatedContainer(
                              height: _openDescription ? 200 : 300,
                              duration: const Duration(seconds: 2),
                              curve: Curves.fastOutSlowIn,
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  enlargeCenterPage: true,
                                  viewportFraction: 1,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      position = index;
                                    });
                                  },
                                ),
                                items: items,
                              ),
                            ),
                          ),
                          Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                items.length,
                                (index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                    ),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: position == index
                                          ? Colors.white
                                          : null,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildBottomSheet() {
    return AnimatedContainer(
      height: _openDescription ? 500.0 : 100.0,
      duration: const Duration(seconds: 3),
      curve: Curves.fastOutSlowIn,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        gradient: LinearGradient(colors: AppColor.bottomSheetBackgroundColor),
      ),
      child: ListView(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => setState(() {
                    _openDescription = !_openDescription;
                  }),
                  child: _openDescription
                      ? Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xff252B39),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Color(0xff38445A),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: Offset(-4, -4),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: AppColor.descriptionCardColor,
                          ),
                          child: Text(
                            "Description",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: _openDescription
                                  ? FontWeight.bold
                                  : FontWeight.w400,
                              fontSize: 15,
                              foreground: Paint()
                                ..shader = _openDescription
                                    ? AppColor.textLinearGradientColor
                                    : AppColor.textColorDescription,
                            ),
                          ),
                        )
                      : _buildNoActiveElement("Description"),
                ),
                _buildNoActiveElement("Specification")
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "PEUGEOT - LR01",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.white.withOpacity(.6),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xff262E3D),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xff1C222E),
                  spreadRadius: 0,
                  blurRadius: 40,
                  offset: Offset(0, -10),
                ),
              ],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "\$ 1,999.99",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Color(0xff3D9CEA),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 38, vertical: 11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff1A1F2C),
                          spreadRadius: 0,
                          blurRadius: 60,
                          offset: Offset(0, 30),
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: AppColor.searchColor,
                      ),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildNoActiveElement(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xff202633),
            spreadRadius: 0,
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xff28303F),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: Colors.white.withOpacity(.6),
        ),
      ),
    );
  }
}
