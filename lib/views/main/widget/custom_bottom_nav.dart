// ignore_for_file: deprecated_member_use
import 'package:bike_app/core/const/app_const.dart';
import 'package:bike_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../shapes/bottom_item_painter.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int currentItem = 0;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.transparent,
        height: 100,
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
                CustomPaint(
                  painter: BottomItemPainter(),
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: const BoxDecoration(color: AppColor.black70),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    AppConst.bottomNavItems.length,
                    (index) {
                      var item = AppConst.bottomNavItems[index];
                      return currentItem == index
                          ? ActiveItemBottomNav(
                              image: item,
                              onTap: () {
                                setState(() {
                                  currentItem = index;
                                });
                              },
                            )
                          : ItemBottomNav(
                              image: item,
                              onTap: () {
                                setState(() {
                                  currentItem = index;
                                });
                              },
                            );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveItemBottomNav extends StatelessWidget {
  const ActiveItemBottomNav({
    super.key,
    required this.image,
    required this.onTap,
  });
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 60,
        height: 60,
        child: CustomPaint(
          painter: BottomItemPainter(),
          child: Center(
            child: SvgPicture.asset(
              image,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class ItemBottomNav extends StatelessWidget {
  const ItemBottomNav({
    super.key,
    required this.image,
    required this.onTap,
  });
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SvgPicture.asset(
          image,
          color: Colors.grey,
        ),
      ),
    );
  }
}
