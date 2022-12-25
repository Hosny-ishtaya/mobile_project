import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pageone.dart';
import 'dart:io';

class Complain extends StatefulWidget {
  const Complain({Key key}) : super(key: key);

  @override
  _Complain_form createState() => _Complain_form();
}

class _Complain_form extends State<Complain> {
  File file;

  Future piccamera() async {
    final myfile = await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      file = File(myfile.path);
    });
  }

  _myformState() {
    _Catogryvalue = _Catogrylist[0];
  }

  final _Catogrylist = ["Pharmaceuticals", "B", "C", "D"];
  String _Catogryvalue = "Pharmaceuticals";

  TextEditingController NameCompanyController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  TextEditingController LocationCompanyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: Container(
          padding: const EdgeInsets.only(left: 30, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.1),
              Container(
                padding: const EdgeInsets.only(left: 0, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        icon: Icon(Icons.arrow_back_ios, color: maincolor),
                        onPressed: () =>
                            Navigator.of(context, rootNavigator: true)
                                .pop(context))
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              TextWidget(text: "Here to put", fontSize: 26, isUnderLine: false),
              TextWidget(
                  text: "Free Complaint !", fontSize: 26, isUnderLine: false),
              SizedBox(height: height * 0.04),
              TextInput(
                  textString: "Phone Number ",
                  textController: PhoneController,
                  hint: "Phone Number "),
              SizedBox(
                height: height * .02,
              ),
              DropdownButtonFormField(
                value: _Catogryvalue,
                items: _Catogrylist.map((e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    )).toList(),
                onChanged: (val) {
                  setState(() {
                    _Catogryvalue = val as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down_circle,
                  color: maincolor,
                ),
                decoration: InputDecoration(labelText: "Catogry Type"),
              ),
              SizedBox(
                height: height * .02,
              ),
              TextInput(
                textString: "Name of Company",
                textController: NameCompanyController,
                hint: "Name of Company",
                obscureText: true,
              ),
              SizedBox(
                height: height * .02,
              ),
              TextInput(
                textString: "Location of Company",
                textController: LocationCompanyController,
                hint: "Location of Company",
                obscureText: true,
              ),
              SizedBox(
                height: height * .05,
              ),
              TextFormField(
                minLines: 2,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration:
                    InputDecoration(hintText: "Description of Complain"),
              ),
              SizedBox(
                height: height * .02,
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    piccamera();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: maincolor,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Upload Image",
                          style: Theme.of(context).textTheme.button?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                      text: "Complain", fontSize: 22, isUnderLine: false),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: maincolor,
                        ),
                        child: Icon(Icons.arrow_forward,
                            color: Colors.white, size: 30),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}

class TextInput extends StatelessWidget {
  final String textString;
  TextEditingController textController;
  final String hint;
  bool obscureText;
  TextInput(
      {Key key,
      this.textString,
      this.textController,
      this.hint,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Color(0xFF000000)),
      cursorColor: Color(0xFF9b9b9b),
      controller: textController,
      keyboardType: TextInputType.text,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: this.textString,
        hintStyle: TextStyle(
            color: Color(0xFF9b9b9b),
            fontSize: 15,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  int fontSize;
  bool isUnderLine;
  final Color color;
  TextWidget(
      {Key key,
      this.text,
      this.fontSize,
      this.isUnderLine = false,
      this.color = maincolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 3, // space between underline and text
      ),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: isUnderLine ? maincolor : Color(0xFFffffff), // Text colour here
        width: 1.0, // Underline width
      ))),
      child: Text(
        this.text,
        style: TextStyle(
          fontSize: this.fontSize.toDouble(),
          fontFamily: "Avenir",
          fontWeight: FontWeight.w900,
          color: this.color,
        ),
      ),
    );
  }
}
