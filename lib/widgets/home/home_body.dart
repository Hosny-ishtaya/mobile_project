import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/widgets/home/product_cart.dart';

class HomeBodyy extends StatefulWidget {
  @override
  State<HomeBodyy> createState() => HomeBody();
}

class HomeBody extends State<HomeBodyy> {
  List<Product> producty = products;

  final searchcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding / 2),
          //TextField(),
          Container(
            margin: EdgeInsets.only(top: 12, left: 5, right: 5, bottom: 12),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(29),
            ),
            child: TextField(
              controller: searchcontroler,
              decoration: InputDecoration(
                hintText: "Search",
                icon: const Icon(
                  Icons.search,
                ),
                border: InputBorder.none,
              ),
              onChanged: searchcompany,
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 90.0),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: producty.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: producty[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void searchcompany(String query) {
    final suggest = products.where((product) {
      final companytitle = product.title.toLowerCase();
      final input = query.toLowerCase();

      return companytitle.contains(input);
    }).toList();
    setState(() => producty = suggest);
  }
}
