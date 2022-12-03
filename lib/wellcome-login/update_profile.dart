import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:http/http.dart' as http;
import '../pageone.dart';
import 'dart:convert';
import 'signin_page.dart';

class UpdateProfileScreen extends StatefulWidget {
  @override
  State<UpdateProfileScreen> createState() => _updateprofile();
}

bool hiddenpaas = true;
var erruname, errfname, errlname, erremail, errpass;

class _updateprofile extends State<UpdateProfileScreen> {
  final TextEditingController usernameeController = new TextEditingController();

  final TextEditingController FirstnameController = new TextEditingController();

  final TextEditingController LastnameController = new TextEditingController();

  final TextEditingController emailController = new TextEditingController();

  final TextEditingController passworddController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text("Edit Profile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ), // AppBar

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("images/hosny.png"),
                  ), // sizedBox
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kPrimaryColor),
                      child: const Icon(
                        Icons.camera,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: <Widget>[
                    //  Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(Icons.supervised_user_circle,
                                color: maincolor),
                          ),
                          Expanded(
                              child: TextField(
                                  controller: usernameeController,
                                  decoration: InputDecoration(
                                    hintText: "USER NAME",
                                    errorText: erruname,
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: maincolor), //<-- SEE HERE
                                    ),
                                  )))
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(Icons.email, color: maincolor),
                          ),
                          Expanded(
                              child: TextField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "Email Address",
                                    errorText: erremail,
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: maincolor), //<-- SEE HERE
                                    ),
                                  )))
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(Icons.lock, color: maincolor),
                        ),
                        Expanded(
                            child: TextField(
                                obscureText: true,
                                controller: passworddController,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  errorText: errpass,
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: maincolor), //<-- SEE HERE
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: _toglepass,
                                    child: Icon(
                                      Icons.visibility,
                                    ),
                                  ),
                                )))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(Icons.supervised_user_circle,
                                color: maincolor),
                          ),
                          Expanded(
                              child: TextField(
                                  controller: LastnameController,
                                  decoration: InputDecoration(
                                    hintText: "Last Name",
                                    errorText: errlname,
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: maincolor), //<-- SEE HERE
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 26, vertical: 16),
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: maincolor,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Edit Profile",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  // signup(String username, String firstname, String lastname, String email,
  //     String password, BuildContext contextt) async {
  //   print("hi im omar");
  //   var response = await http
  //       .post(Uri.parse("http://192.168.1.65:8090/api/v1/user/addUser"),
  //           body: json.encode({
  //             'userName': username,
  //             'firstName': firstname,
  //             'lastName': lastname,
  //             'email': email,
  //             'password': password,
  //             'role': "User"
  //           }),
  //           headers: {"content-type": "application/json"});

  //   if (response.statusCode == 200) {
  //     print('account is creted ');

  //     usernameeController.text = "";
  //     FirstnameController.text = "";
  //     LastnameController.text = "";
  //     emailController.text = "";
  //     passworddController.text = "";

  //     final snakbar = SnackBar(content: Text("Account is Created"));
  //     ScaffoldMessenger.of(context).showSnackBar(snakbar);
  //   } else {
  //     print(response.statusCode);
  //   }
  // }

  void _toglepass() {
    setState(() {
      hiddenpaas = !hiddenpaas;
    });
  }
}
