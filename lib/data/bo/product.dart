import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const Product._();

  const factory Product(
      {@JsonKey(name: "title") required String name,
      required String description,
      @JsonKey(name: "price", fromJson: doublePriceToInt)
      required int priceInCents,
      required String image,
      required String category}) = _Product;

  String displayPriceInEuro() => "${(priceInCents / 100).toStringAsFixed(2)}€";

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
  static List<Product> listProducts = [
    Product(
        name: "Smartphone XYZ",
        description:
            "Un smartphone puissant avec un appareil photo de haute qualité.",
        priceInCents: 69999,
        image: "https://picsum.photos/id/0/100/100",
        category: "Électronique"),
    Product(
        name: "Livre de cuisine gourmet",
        description: "100 recettes délicieuses pour impressionner vos invités.",
        priceInCents: 2999,
        image: "https://picsum.photos/id/1/100/100",
        category: "Livres"),
    Product(
        name: "Chaussures de course",
        description:
            "Chaussures légères et confortables pour vos séances de jogging.",
        priceInCents: 8999,
        image: "https://picsum.photos/id/2/100/100",
        category: "Sport"),
    Product(
        name: "Set de pinceaux de maquillage",
        description: "15 pinceaux professionnels pour un maquillage parfait.",
        priceInCents: 3499,
        image: "https://picsum.photos/id/3/100/100",
        category: "Beauté"),
    Product(
        name: "Cafetière programmable",
        description: "Préparez votre café automatiquement chaque matin.",
        priceInCents: 5999,
        image: "https://picsum.photos/id/4/100/100",
        category: "Électroménager"),
    Product(
        name: "Drone caméra HD",
        description: "Capturez des vidéos aériennes époustouflantes.",
        priceInCents: 39999,
        image: "https://picsum.photos/id/5/100/100",
        category: "Électronique"),
    Product(
        name: "Tapis de yoga antidérapant",
        description: "Pour une pratique du yoga en toute sécurité.",
        priceInCents: 2499,
        image: "https://picsum.photos/id/6/100/100",
        category: "Sport"),
    Product(
        name: "Robot aspirateur intelligent",
        description: "Nettoyage automatique de votre maison.",
        priceInCents: 29999,
        image: "https://picsum.photos/id/7/100/100",
        category: "Électroménager"),
    Product(
        name: "Montre connectée",
        description: "Suivez votre activité physique et restez connecté.",
        priceInCents: 19999,
        image: "https://picsum.photos/id/8/100/100",
        category: "Électronique"),
    Product(
        name: "Blender haute puissance",
        description: "Préparez des smoothies et des soupes en un instant.",
        priceInCents: 7999,
        image: "https://picsum.photos/id/9/100/100",
        category: "Électroménager"),
    Product(
        name: "Roman best-seller",
        description: "Le dernier roman passionnant de l'auteur à succès.",
        priceInCents: 1499,
        image: "https://picsum.photos/id/10/100/100",
        category: "Livres"),
    Product(
        name: "Sérum visage anti-âge",
        description: "Formule avancée pour une peau plus jeune.",
        priceInCents: 5999,
        image: "https://picsum.photos/id/11/100/100",
        category: "Beauté"),
    Product(
        name: "Enceinte bluetooth portable",
        description: "Son puissant et batterie longue durée.",
        priceInCents: 8999,
        image: "https://picsum.photos/id/12/100/100",
        category: "Électronique"),
    Product(
        name: "Set de couteaux de cuisine",
        description:
            "6 couteaux professionnels pour tous vos besoins culinaires.",
        priceInCents: 12999,
        image: "https://picsum.photos/id/13/100/100",
        category: "Cuisine"),
    Product(
        name: "Crème solaire SPF 50",
        description: "Protection optimale contre les UV.",
        priceInCents: 1999,
        image: "https://picsum.photos/id/14/100/100",
        category: "Beauté"),
    Product(
        name: "Sac à dos de randonnée",
        description: "Confortable et spacieux pour vos aventures en plein air.",
        priceInCents: 7999,
        image: "https://picsum.photos/id/15/100/100",
        category: "Sport"),
    Product(
        name: "Lampe de bureau LED",
        description: "Éclairage ajustable pour un confort visuel optimal.",
        priceInCents: 3999,
        image: "https://picsum.photos/id/16/100/100",
        category: "Maison"),
    Product(
        name: "Théière en fonte",
        description:
            "Pour une infusion parfaite et une conservation optimale de la chaleur.",
        priceInCents: 4999,
        image: "https://picsum.photos/id/17/100/100",
        category: "Cuisine"),
    Product(
        name: "Plante d'intérieur",
        description: "Purifie l'air et décore votre intérieur.",
        priceInCents: 2499,
        image: "https://picsum.photos/id/18/100/100",
        category: "Maison"),
    Product(
        name: "Puzzle 1000 pièces",
        description: "Un défi amusant pour toute la famille.",
        priceInCents: 1999,
        image: "https://picsum.photos/id/19/100/100",
        category: "Jeux"),
    Product(
        name: "Batterie externe 20000mAh",
        description: "Ne tombez plus jamais à court de batterie.",
        priceInCents: 4999,
        image: "https://picsum.photos/id/20/100/100",
        category: "Électronique"),
    Product(
        name: "Tente de camping 4 personnes",
        description: "Légère et facile à monter pour vos escapades nature.",
        priceInCents: 14999,
        image: "https://picsum.photos/id/21/100/100",
        category: "Sport"),
    Product(
        name: "Mixeur plongeant",
        description: "Pour des soupes et sauces onctueuses en un tour de main.",
        priceInCents: 3999,
        image: "https://picsum.photos/id/22/100/100",
        category: "Électroménager"),
    Product(
        name: "Crayons de couleur professionnels",
        description: "Set de 24 couleurs pour artistes et passionnés.",
        priceInCents: 2999,
        image: "https://picsum.photos/id/23/100/100",
        category: "Loisirs créatifs"),
    Product(
        name: "Oreiller ergonomique",
        description: "Pour un sommeil réparateur et sans douleurs cervicales.",
        priceInCents: 5999,
        image: "https://picsum.photos/id/24/100/100",
        category: "Maison"),
    Product(
        name: "Guitare acoustique",
        description: "Idéale pour débutants et intermédiaires.",
        priceInCents: 19999,
        image: "https://picsum.photos/id/25/100/100",
        category: "Musique"),
    Product(
        name: "Appareil photo reflex",
        description: "Pour des photos de qualité professionnelle.",
        priceInCents: 69999,
        image: "https://picsum.photos/id/26/100/100",
        category: "Électronique"),
    Product(
        name: "Machine à pain",
        description: "Du pain frais fait maison tous les jours.",
        priceInCents: 8999,
        image: "https://picsum.photos/id/27/100/100",
        category: "Électroménager"),
    Product(
        name: "Costume élégant",
        description:
            "Coupe moderne pour homme, parfait pour toutes les occasions.",
        priceInCents: 29999,
        image: "https://picsum.photos/id/28/100/100",
        category: "Mode"),
    Product(
        name: "Coffret de thés assortis",
        description: "10 variétés de thés du monde entier.",
        priceInCents: 3999,
        image: "https://picsum.photos/id/29/100/100",
        category: "Alimentation"),
  ];
}

int doublePriceToInt(double doublePrice) {
  return (doublePrice * 100).toInt();
}
