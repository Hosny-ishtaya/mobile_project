import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/home/home_body.dart';
import '../Sidebar/Ndrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Ndrawer(),
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        'Company Rate',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}
