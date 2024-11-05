import 'package:bike_app/core/theme/app_color.dart';
import 'package:bike_app/views/main/shapes/rectangle_home_shape.dart';
import 'package:bike_app/views/main/widget/custom_bottom_nav.dart';
import 'package:bike_app/views/main/widget/horizontal_icons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widget/bike_card_widget.dart';
import '../widget/custom_app_bar.dart';
import '../widget/poducts_grid_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Material(
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
              const SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      CustomAppBar(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              BikeCardWidget(),
                              HorizontaliconsWidget(),
                              ProductsGridWidget(),
                              SizedBox(height: 100),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const CustomBottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}
