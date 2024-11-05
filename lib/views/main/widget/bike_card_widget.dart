import 'package:flutter/material.dart';
import '../../../core/const/app_const.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/utils/app_uitls.dart';
import '../shapes/card_shape.dart';

class BikeCardWidget extends StatelessWidget {
  const BikeCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CardShape(),
      child: SizedBox(
        height: 270,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "${AppConst.image}Electric_Bicycle.png",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: AppUtils.defaultMargin,
              ),
              child: Text(
                "30% Off",
                style: TextStyle(
                  color: AppColor.reductionColor,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
