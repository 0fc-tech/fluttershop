import 'package:flutter/material.dart';
import 'package:fluttershop/data/bo/product.dart';
import 'package:fluttershop/data/model/cart_model.dart';
import 'package:fluttershop/view/page/cart_page.dart';
import 'package:fluttershop/view/page/detail_product_page.dart';
import 'package:fluttershop/view/page/list_products_page.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = GoRouter(
      initialLocation: "/list",
      errorBuilder: (context, state) {
        return Scaffold(
          body: Center(
            child: Icon(Icons.error),
          ),
        );
      },
      routes: [
        GoRoute(path: "/list", builder: (_, __) => ListProductsPage(), routes: [
          GoRoute(
              name: "detail",
              path: "detail",
              builder: (context, state) =>
                  DetailProductPage(product: state.extra as Product)),
          GoRoute(name: "cart", path: "cart", builder: (_, __) => CartPage()),
        ])
      ]);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartModel(),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        routerConfig: _router,
        darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(primary: Colors.red),
          useMaterial3: true,
        ),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
      ),
    );
  }
}
