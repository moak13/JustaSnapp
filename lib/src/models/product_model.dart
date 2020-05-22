import 'package:flutter/material.dart';

class ProductModel {
  final Color color;
  final String title;
  final int amount;
  final String location;

  ProductModel({this.color, this.title, this.amount, this.location});
}

List<ProductModel> product = [
  ProductModel(
    color: Colors.red,
    title: 'IPhone 11',
    amount: 300000,
    location: 'Ibadan',
  ),
  ProductModel(
    color: Colors.orange,
    title: 'IPhone X',
    amount: 300000,
    location: 'Ibadan',
  ),
  ProductModel(
    color: Colors.blue,
    title: 'IPhone X Pro',
    amount: 300000,
    location: 'Ibadan',
  ),
  ProductModel(
    color: Colors.yellow,
    title: 'Gionee',
    amount: 300000,
    location: 'Ibadan',
  )
];
