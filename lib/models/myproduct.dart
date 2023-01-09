// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Product {
  String imageUrl;
  String name;
  String price;
  String discount;
  Color color;
  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.discount,
    required this.color,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'name': name,
      'price': price,
      'discount': discount,
      'color': color.value,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      imageUrl: map['imageUrl'] as String,
      name: map['name'] as String,
      price: map['price'] as String,
      discount: map['discount'] as String,
      color: Color(map['color'] as int),
    );
  }
}

List<Product> productsList() {
  print('SERVER REQUEST');
  return [
    Product(
        imageUrl: 'assets/images/shirt.png',
        name: 'Half sleaves t-shirt',
        price: 290.toString(),
        discount: 170.toString(),
        color: Color(0xFFffeee6)),
    Product(
        imageUrl: 'assets/images/pent.png',
        name: 'Men jeans Pent',
        price: 270.toString(),
        discount: 210.toString(),
        color: Color(0xFFeafffc)),
    Product(
        imageUrl: 'assets/images/kids kameez.png',
        name: 'Red cotton kids kameez',
        price: 410.toString(),
        discount: 399.toString(),
        color: Color(0xFFfff0f8)),
    Product(
        imageUrl: 'assets/images/kids pentshirt.png',
        name: 'kids pentshirt',
        price: 699.toString(),
        discount: 71.toString(),
        color: Color(0xFFfffbe8)),
    Product(
        imageUrl: 'assets/images/shalwar kameez.png',
        name: 'Men white shalwar kameez',
        price: 371.toString(),
        discount: 110.toString(),
        color: Color.fromARGB(255, 194, 210, 208)),
    Product(
        imageUrl: 'assets/images/sharwani.png',
        name: 'Marriage sharwani',
        price: 765.toString(),
        discount: 99.toString(),
        color: Color.fromARGB(139, 229, 232, 238)),
  ];
}
