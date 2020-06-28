import 'package:flutter/foundation.dart';

enum Location { Lagos, Abuja, PortHarcourt, Ibadan }
enum Category {
  Electronics,
  Phones_And_Tablets,
  Food,
  Service,
  Fashion,
  Entertainment,
  Cars,
  Others
}

class Product {
  final String item;
  final Category category;
  final String description;
  final Location location;
  final int phoneNumber;
  final double price;

  Product(
      {@required this.item,
      this.category,
      @required this.description,
      this.location,
      @required this.phoneNumber,
      @required this.price});
}
