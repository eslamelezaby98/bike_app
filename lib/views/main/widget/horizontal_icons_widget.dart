// ignore_for_file: deprecated_member_use
import 'package:bike_app/core/const/app_const.dart';
import 'package:bike_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_uitls.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

class HorizontaliconsWidget extends StatefulWidget {
  const HorizontaliconsWidget({super.key});

  @override
  State<HorizontaliconsWidget> createState() => _HorizontaliconsWidgetState();
}

class _HorizontaliconsWidgetState extends State<HorizontaliconsWidget> {
  int currentIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppUtils.defaultSpace),
        Transform.rotate(
          angle: -math.pi / 30,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                children:
                    List.generate(AppConst.horizontalListIcons.length, (index) {
                  var item = AppConst.horizontalListIcons[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIcon = index;
                      });
                    },
                    child: Transform.rotate(
                      angle: math.pi / 30,
                      child: Container(
                        width: 50,
                        height: AppConst.horizontalListIcons.length * 10,
                        margin: EdgeInsets.only(
                          right: 20,
                          bottom: index * 3,
                        ),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: currentIcon == index
                                    ? AppColor.searchColor
                                    : [
                                        const Color(0xff363E51),
                                        const Color(0xff191E26)
                                      ])),
                        child: index == 0
                            ? Text(
                                "All",
                                style: TextStyle(
                                  color: currentIcon == index
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              )
                            : SvgPicture.asset(
                                item,
                                height: 5,
                                width: 10,
                                fit: BoxFit.contain,
                                color: currentIcon == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        )
      ],
    );
  }
}
