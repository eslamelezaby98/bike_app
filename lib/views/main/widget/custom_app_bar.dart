import 'package:flutter/material.dart';
import '../../../core/theme/app_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          children: [
            const Text(
              "Choose Your Bike",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: AppColor.searchColor,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
