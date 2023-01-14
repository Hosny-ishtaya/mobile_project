import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:store_app/wellcome-login/signin_page.dart';
import '../pageone.dart';

class ResetPasswordScreen extends StatelessWidget {
  AppBar homeAppBar() {
    return AppBar(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    );
  }

  var erremail;

  final TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              'Reset Password',
              style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 30, color: mainecolor),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please enter your email address',
              style: TextStyle(fontWeight: FontWeight.w600, color: maincolor),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(Icons.email, color: icon),
                  ),
                  Expanded(
                      child: TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Email Address",
                            errorText: erremail,
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: maincolor), //<-- SEE HERE
                            ),
                          )))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FittedBox(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SignIn();
                    },
                  ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: maincolor,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Reset",
                        style: Theme.of(context).textTheme.button?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
