import 'classes.dart';

final List<ShoppingCategory> caterogies = [
  ShoppingCategory("Manteau"),
  ShoppingCategory("Robes"),
  ShoppingCategory("Tricot"),
  ShoppingCategory("Pantalons"),
];

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
    reduction: 30,
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
