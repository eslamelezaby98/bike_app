import 'package:bike_app/core/const/app_const.dart';
import 'package:bike_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../shapes/curve_painter.dart';

class ProductsGridWidget extends StatelessWidget {
  const ProductsGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 20,
      mainAxisSpacing: 0,
      childAspectRatio: .55,
      physics: const NeverScrollableScrollPhysics(),
      children: AppConst.productsImages
          .map((data) => Padding(
                padding: data.index % 2 != 0
                    ? const EdgeInsets.only(bottom: 30)
                    : const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, AppRoutes.product),
                  child: CustomPaint(
                    painter: CurvePainter(),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 30),
                            Align(
                              alignment: Alignment.topRight,
                              child: SvgPicture.asset(
                                data.isFavorite
                                    ? "${AppConst.svg}Vector.svg"
                                    : "${AppConst.svg}Outline.svg",
                              ),
                            ),
                            const SizedBox(height: 10),
                            Image.asset(data.img),
                            const SizedBox(height: 10),
                            Text(
                              data.categoryName,
                              style: TextStyle(
                                color: Colors.white.withOpacity(.6),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              data.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              data.price,
                              style: TextStyle(
                                color: Colors.white.withOpacity(.6),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
