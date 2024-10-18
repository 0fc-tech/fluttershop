import 'package:flutter/material.dart';
import 'package:fluttershop/data/model/cart_model.dart';
import 'package:fluttershop/view/widgets/listview_products.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ListProductsPage extends StatelessWidget {
  const ListProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Shop'),
        actions: [
          IconButton(
              onPressed: () => context.go("/list/cart"),
              icon: Badge(
                  label:
                      Text("${context.watch<CartModel>().listProducts.length}"),
                  child: Icon(Icons.shopping_cart)))
        ],
      ),
      body: ListViewProducts(),
    );
  }
}
