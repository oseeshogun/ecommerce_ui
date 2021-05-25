import 'package:flutter/material.dart';

import 'data/classes.dart';



class CategoryWidget extends StatelessWidget {
  final ShoppingCategory caterogy;
  final bool active;

  const CategoryWidget({Key? key, required this.caterogy, required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 30,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: active ? Color(0xFFf1d9da) : null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        caterogy.name,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: active ? Color(0xFF6a5959) : Color(0xFF8d8d8d),
        ),
      ),
    );
  }
}
