import 'package:bike_app/core/theme/app_color.dart';
import 'package:bike_app/views/main/widget/custom_bottom_nav.dart';
import 'package:bike_app/views/main/widget/horizontal_icons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/const/app_const.dart';
import '../widget/bike_card_widget.dart';
import '../widget/custom_app_bar.dart';
import '../widget/poducts_grid_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: SvgPicture.asset(
                    "${AppConst.svg}home_bkg.svg",
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
