import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final Color? color;

  const CategoryCard({
    required this.svgSrc,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? const Color(0xFFFFCD83),
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff494949),
            offset: Offset(7.0, 7.0),
          ),
        ],
      ),
      child: Image.asset(
        svgSrc,
        width: 60,
        height: 60,
      ),
    );
  }
}
