import 'package:ecommerce/view.dart';
import 'package:flutter/material.dart';

class Cloth {
  final String title;
  final int prize;
  final String asset;
  final bool reduction;
  final String? next;

  Cloth({
    required this.title,
    required this.prize,
    required this.asset,
    this.next,
    this.reduction = false,
  });
}

final List<Cloth> samples = [
  Cloth(
    title: "Manteau d'été",
    prize: 80,
    asset: 'images/manteau/laura-chouette-uTYFFN8g3EI-unsplash.jpg',
    next: 'images/manteau/laura-chouette-NbGtAvj_E3Q-unsplash.jpg',
  ),
  Cloth(
    title: "Pantalon kaki",
    prize: 80,
    asset: 'images/pants/engin-akyurt-5raPrOhbKQo-unsplash.jpg',
    reduction: true,
  ),
  Cloth(
    title: "Manteau belge",
    prize: 80,
    asset: 'images/manteau/laura-chouette-Pv3DjB4Q7nk-unsplash.jpg',
    next: 'images/manteau/laura-chouette-CjB-8NY5at8-unsplash.jpg',
  ),
  Cloth(
    title: "Culotte courte",
    prize: 80,
    asset: 'images/pants/engin-akyurt-nmJUumd6TBE-unsplash.jpg',
  ),
  Cloth(
    title: "Complet Blanc",
    prize: 80,
    asset: 'images/autres/engin-akyurt-ehdI_89nzMo-unsplash.jpg',
  ),
];

final List<Cloth> recommandations = [
  Cloth(
    title: "Pantalon kaki",
    prize: 80,
    asset: 'images/manteau/laura-chouette-Pv3DjB4Q7nk-unsplash.jpg',
  ),
  Cloth(
    title: "Manteau d'été",
    prize: 80,
    asset: 'images/manteau/laura-chouette-d7wSG9uPev4-unsplash.jpg',
  ),
  Cloth(
    title: "Culotte courte",
    prize: 80,
    asset: 'images/pants/ruben-ramirez-MVf14y-AhrM-unsplash.jpg',
  ),
  Cloth(
    title: "Complet Blanc",
    prize: 80,
    asset: 'images/pants/michele-seghieri-kqvEzITj2Pk-unsplash.jpg',
  ),
];

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
                  if (cloth.reduction)
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
                          '-30%',
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
