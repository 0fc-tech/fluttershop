import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/model/cart_model.dart';
import '../widgets/empty_cart.dart';
import '../widgets/listview_product_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var prix = 0.0;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Panier Flutter Shop'),
        ),
        body: Consumer<CartModel>(
          builder: (context, cartModel, child) {
            if (cartModel.listProducts.isEmpty) {
              return EmptyCart();
            } else {
              return ListViewProductCart(cartModel: cartModel);
            }
          },
        ));
  }
}
