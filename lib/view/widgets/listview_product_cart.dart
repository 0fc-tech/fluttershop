import 'package:flutter/material.dart';
import 'package:fluttershop/view/widgets/row_total_cart.dart';

import '../../data/model/cart_model.dart';

class ListViewProductCart extends StatelessWidget {
  final CartModel cartModel;
  const ListViewProductCart({
    required this.cartModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowTotalCart(
            prix: "${(cartModel.getTotalCents() / 100).toStringAsFixed(2)}€"),
        Expanded(
          child: ListView.builder(
            itemCount: cartModel.listProducts.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(cartModel.listProducts[index].name),
              trailing: IconButton(
                  onPressed: () {
                    cartModel.removeProduct(cartModel.listProducts[index]);
                  },
                  icon: Icon(Icons.remove)),
            ),
          ),
        ),
      ],
    );
  }
}
