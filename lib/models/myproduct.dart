import 'package:flutter/material.dart';

class Product {
  String imageUrl;
  String name;
  String price;
  String discount;

  Product(
      {required this.imageUrl,
      required this.name,
      required this.price,
      required this.discount});
}

List<Product> productsList = [
  Product(
      imageUrl: 'assets/images/shirt.png',
      name: 'Half sleaves t-shirt',
      price: 130.toString(),
      discount: 170.toString()),
  Product(
      imageUrl: 'assets/images/pent.png',
      name: 'Men jeans Pent',
      price: 270.toString(),
      discount: 210.toString()),
  Product(
      imageUrl: 'assets/images/kids kameez.png',
      name: 'Red cotton kids kameez',
      price: 410.toString(),
      discount: 399.toString()),
  Product(
      imageUrl: 'assets/images/kids pentshirt.png',
      name: 'kids pentshirt',
      price: 699.toString(),
      discount: 71.toString()),
  Product(
      imageUrl: 'assets/images/shalwar kameez.png',
      name: 'Men white shalwar kameez',
      price: 371.toString(),
      discount: 110.toString()),
  Product(
      imageUrl: 'assets/images/sharwani.png',
      name: 'Marriage sharwani',
      price: 765.toString(),
      discount: 99.toString()),
];
