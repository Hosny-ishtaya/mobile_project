import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {this.id,
      this.price,
      this.title,
      this.subTitle,
      this.description,
      this.image});
}

// list of products

// Future<List<void>> GetCompany() async {
//   final url =
//       "http://192.168.1.114:9090/api/compailntsystem/customer/getallcompanies";
//   final uri = Uri.parse(url);
//   final response = await http.get(uri);

//   if (response.statusCode == 200) {
//     print("success get company");

//     final json = jsonDecode(response.body);

//     final result = json as List;

//     return result;

//     // setState(() {
//     //   producty = result; // there we put all info from database in this list
//     // });

//     print(response.statusCode);
//     print(json);
//     // print(response.body);
//   } else {
//     print(response.statusCode);
//   }
// }
List<Product> products = [
  Product(
    id: 1,
    price: 8,
    title: "Al-Rajeh Company",
    subTitle: "cleaning products",
    image: "images/alrajeh.png",
    description: "Palestine-Nablus",
  ),
];
