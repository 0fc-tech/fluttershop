import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttershop/data/bo/product.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../data/model/cart_model.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Response>(
        future: get(Uri.parse("https://fakestoreapi.com/products")),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final listProducts =
                (jsonDecode(snapshot.data!.body) as List<dynamic>)
                    .map((productJson) => Product.fromJson(productJson))
                    .toList();
            return ListView.separated(
              itemCount: listProducts.length,
              itemBuilder: (_, index) => InkWell(
                onTap: () {},
                child: ListTile(
                  onTap: () =>
                      context.go("/list/detail", extra: listProducts[index]),
                  leading: Hero(
                    tag: listProducts[index],
                    child: Image.network(
                      listProducts[index].image,
                      width: 80,
                    ),
                  ),
                  title: Text(listProducts[index].name),
                  subtitle: Text(
                    listProducts[index].displayPriceInEuro(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  trailing: TextButton(
                      onPressed: () {
                        context
                            .read<CartModel>()
                            .addProduct(listProducts[index]);
                      },
                      child: Text("Ajouter".toUpperCase())),
                ),
              ),
              separatorBuilder: (_, __) => Divider(),
            );
          }
          return CircularProgressIndicator();
        });
  }
}
