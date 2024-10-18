import 'package:flutter/widgets.dart';

import '../bo/product.dart';

class CartModel with ChangeNotifier {
  final listProducts = <Product>[];

  void addProduct(Product p) {
    listProducts.add(p);
    notifyListeners();
  }

  void removeProduct(Product p) {
    listProducts.remove(p);
    notifyListeners();
  }

  int getTotalCents() =>
      listProducts.fold(0, (prev, act) => prev + act.priceInCents);
}
