import 'package:flutter/material.dart';

class RowTotalCart extends StatelessWidget {
  const RowTotalCart({
    super.key,
    required this.prix,
  });

  final String prix;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Votre panier total est de"),
        Padding(
          padding: const EdgeInsets.only(right: 32.0),
          child: Text(
            prix,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
