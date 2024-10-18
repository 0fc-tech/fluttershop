import 'package:flutter/material.dart';
import 'package:fluttershop/view/widgets/row_total_cart.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RowTotalCart(prix: "0.00€"),
          Spacer(),
          Text("Votre panier est actuellement vide"),
          Icon(Icons.image),
          Spacer(),
        ],
      ),
    );
  }
}
