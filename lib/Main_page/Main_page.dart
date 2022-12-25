import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import './Card_main_page.dart';
import 'Bottom_page.dart';
import '../Complain/Complain_form.dart';
import '../screens/home_screen.dart';
import '../Sidebar/Ndrawer.dart';

class Mainpage extends StatelessWidget {
  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
    );
  }

  var namee = "Hosny Ishtaya";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      drawer: const Ndrawer(),
      appBar: homeAppBar(),
      backgroundColor: kSha,
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   child: GestureDetector(
                  //     onTap: () => {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) {
                  //           return Ndrawer();
                  //         }),
                  //       )
                  //     },
                  //     child: Align(
                  //       alignment: Alignment.topRight,
                  //       child: Container(
                  //         alignment: Alignment.center,
                  //         height: 52,
                  //         width: 52,
                  //         decoration: BoxDecoration(
                  //           color: kTextColor,
                  //           shape: BoxShape.circle,
                  //         ),
                  //         child: SvgPicture.asset("images/menu.svg"),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Text(
                    "Wellcome",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        namee,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  // SearchBar(),
                  SizedBox(height: 60),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "COMPLAINT",
                          svgSrc: "images/p3.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Complain();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "MY COMPLAINT",
                          svgSrc: "images/p7.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "COMPANY",
                          svgSrc: "images/comp.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HomeScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "PROFILE",
                          svgSrc: "images/comp.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
