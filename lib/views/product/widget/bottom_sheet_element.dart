import 'package:flutter/material.dart';

class BottomSheetElement extends StatelessWidget {
  const BottomSheetElement({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
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
