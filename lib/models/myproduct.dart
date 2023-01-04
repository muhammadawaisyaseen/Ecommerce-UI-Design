import 'package:flutter/material.dart';

class Product {
  String imageUrl;
  String name;
  String price;
  String discount;
  Color color;

  Product(
      {required this.imageUrl,
      required this.name,
      required this.price,
      required this.discount,
      required this.color
      });
}

List<Product> productsList = [
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
      color:Color.fromARGB(139, 229, 232, 238)),
];
