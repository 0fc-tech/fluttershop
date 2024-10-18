import 'package:flutter/material.dart';
import 'package:fluttershop/data/bo/product.dart';
import 'package:fluttershop/data/model/cart_model.dart';
import 'package:provider/provider.dart';

class DetailProductPage extends StatelessWidget {
  final Product product;
  const DetailProductPage({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('appbarTitle'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 64),
            child: Column(
              children: [
                HeroProduct(product: product),
                NameProduct(product: product),
                CategoryPrice(product: product),
                Description(product: product),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonAddCart(product: product),
          )
        ],
      ),
    );
  }
}

class NameProduct extends StatelessWidget {
  const NameProduct({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          product.name,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

class HeroProduct extends StatelessWidget {
  const HeroProduct({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: product,
        child: Image.network(
          product.image,
          height: 200.0,
        ),
      ),
    );
  }
}

class ButtonAddCart extends StatelessWidget {
  const ButtonAddCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: FilledButton.icon(
          icon: Icon(Icons.add_shopping_cart),
          onPressed: () => context.read<CartModel>().addProduct(product),
          label: Text("Ajouter au panier"),
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          product.description,
          style: Theme.of(context).textTheme.bodyLarge,
          //overflow: TextOverflow.clip,
        ),
      ),
    );
  }
}

class CategoryPrice extends StatelessWidget {
  const CategoryPrice({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          children: [
            Text(
              "Catégorie : ${product.category}",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: Colors.grey),
            ),
            Spacer(),
            Text(
              product.displayPriceInEuro(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
