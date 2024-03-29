import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/widgets/details/color_dot.dart';
import 'package:store_app/widgets/details/product_image.dart';

class About_program extends StatelessWidget {
  final Product product;

  const About_program({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // to provide us the height and the width of the sceen
    Size size = MediaQuery.of(context).size;
    AppBar homeAppBar() {
      return AppBar(
        foregroundColor: Colors.white,
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
      );
    }

    return Scaffold(
      appBar: homeAppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                // Expanded(

                //   child: Container(
                //     margin: EdgeInsets.only(top: 10),
                //     decoration: BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage("images/wellcome.png"),
                //         fit: BoxFit.fitHeight, //for fit image on page
                //       ),
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       ColorDot(
                //         fillColor: kTextLightColor,
                //         isSelected: true,
                //       ),
                //       ColorDot(
                //         fillColor: Colors.blue,
                //         isSelected: false,
                //       ),
                //       ColorDot(
                //         fillColor: Colors.red,
                //         isSelected: false,
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: 80),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    "About Program:",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Consumer Protection Association',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: kDefaultPadding),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              "Our program is for anyone who wants to write a complaint about any company or shop.",
              style: TextStyle(color: Colors.black87, fontSize: 20.0),
            ),
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          // SizedBox(height: 20),
          // Container(
          //   margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          //   padding: EdgeInsets.symmetric(
          //     horizontal: kDefaultPadding * 1.5,
          //     vertical: kDefaultPadding / 2,
          //   ),
          //   child: Text(
          //     "Contact Us:",
          //     style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 25.0,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     buildSocialIcon(FontAwesomeIcons.whatsapp),
          //     SizedBox(width: 20),
          //     buildSocialIcon(FontAwesomeIcons.twitter),
          //     SizedBox(width: 20),
          //     buildSocialIcon(FontAwesomeIcons.facebook),
          //     SizedBox(width: 20),
          //     buildSocialIcon(FontAwesomeIcons.linkedin),
          //   ],
          // )
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              "How To Use It:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              "If the Company you want to write a complaint about it, is In the list of companies on the application. You take your own ID and then make a complaint..",
              style: TextStyle(color: Colors.black87, fontSize: 20.0),
            ),
          ),
          SizedBox(height: 6),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              "If Not in the list of companies on the application. You make complaint by inter of Id of company  ID:(10) then Write Name company.",
              style: TextStyle(color: Colors.black87, fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Material(
            shape: CircleBorder(),
            clipBehavior: Clip.hardEdge,
            color: kPrimaryColor,
            child: InkWell(
              onTap: (() {}),
              child: Center(
                  child: Icon(
                icon,
                size: 32,
              )),
            )),
      );
}
