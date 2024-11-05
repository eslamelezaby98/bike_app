import 'package:bike_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../main/shapes/rectangle_home_shape.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Material(
            color: AppColor.black70,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomPaint(
                    size: Size(
                      width,
                      height - 140,
                    ),
                    painter: RectangleHomeShape(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
