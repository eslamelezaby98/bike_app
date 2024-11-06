import 'package:flutter/material.dart';
import '../../../core/theme/app_color.dart';

class ActiveBottomSheetElement extends StatelessWidget {
  const ActiveBottomSheetElement({
    super.key,
    required this.openDescription,
    required this.text,
  });
  final bool openDescription;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: openDescription ? FontWeight.bold : FontWeight.w400,
          fontSize: 15,
          foreground: Paint()
            ..shader = openDescription
                ? AppColor.textLinearGradientColor
                : AppColor.textColorDescription,
        ),
      ),
    );
  }
}
