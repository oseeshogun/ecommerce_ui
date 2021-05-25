import 'package:ecommerce/view.dart';
import 'package:flutter/material.dart';

import 'data/classes.dart';

class ClothWidget extends StatelessWidget {
  final Cloth cloth;

  const ClothWidget(this.cloth, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 200,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => View(cloth)));
              },
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Hero(
                      tag: cloth.asset,
                      child: Image.asset(
                        cloth.asset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (cloth.reduction != null)
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 30,
                        width: 50,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '-${cloth.reduction}%',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 200,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cloth.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xFF484848),
                ),
              ),
              Text(
                "\$" + cloth.prize.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF828282),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ClothWidgetSimple extends StatelessWidget {
  final Cloth cloth;

  const ClothWidgetSimple(
    this.cloth, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          cloth.asset,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
