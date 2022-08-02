import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'bread',
      description: 'Bonn Bread',
      price: 5.00,
      assetName: 'assets/images/bread.jpg',
    ),
    Product(
      id: 'p2',
      title: 'cake',
      description: 'Choclate Cake',
      price: 20.99,
      assetName: 'assets/images/cake.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Patties',
      description: 'Potato Patty',
      price: 3.99,
      assetName: 'assets/images/patties.jpeg',
    ),
    Product(
      id: 'p4',
      title: 'Cookies',
      description: 'Coconut Cookie.',
      price: 2.99,
      assetName: 'assets/images/cookies.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
