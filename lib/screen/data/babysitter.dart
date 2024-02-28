import 'package:flutter/material.dart';

class Product {
  final String name;
  final String rating;
  final AssetImage image;
  final String harga;
  static const nameRoute = '/products';
  const Product(
      {required this.name,
      required this.rating,
      required this.image,
      required this.harga});
}

final List<Product> productList = [
  const Product(
    name: '1',
    rating: '5',
    image: AssetImage('assets/images/logo.png'),
    harga: 'Rp. 999999',
  ),
  const Product(
    name: '2',
    rating: '5',
    image: AssetImage('assets/images/logo.png'),
    harga: 'Rp. 999999',
  ),
  const Product(
    name: '3',
    rating: '5',
    image: AssetImage('assets/images/logo.png'),
    harga: 'Rp. 999999',
  ),
  const Product(
    name: '4',
    rating: '5',
    image: AssetImage('assets/images/logo.png'),
    harga: 'Rp. 999999',
  ),
  const Product(
    name: '5',
    rating: '5',
    image: AssetImage('assets/images/logo.png'),
    harga: 'Rp. 999999',
  ),
  const Product(
    name: '6',
    rating: '5',
    image: AssetImage('assets/images/background.png'),
    harga: 'Rp. 999999',
  ),
  const Product(
    name: '7',
    rating: '5',
    image: AssetImage('assets/images/background2.png'),
    harga: 'Rp. 999999',
  ),
  const Product(
    name: '8',
    rating: '5',
    image: AssetImage('assets/images/background.png'),
    harga: 'Rp. 999999',
  ),
  const Product(
    name: '9',
    rating: '5',
    image: AssetImage('assets/images/logo.png'),
    harga: 'Rp. 999999',
  ),
];
