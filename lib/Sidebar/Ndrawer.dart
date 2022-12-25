import '../wellcome-login/signin_page.dart';
import 'package:flutter/material.dart';
import '../pageone.dart';
import 'Drawer_item.dart';
import '../wellcome-login/update_profile.dart';
import '../screens/home_screen.dart';
import '../Complain/Complain_form.dart';
import '../Main_page/Main_page.dart';

class Ndrawer extends StatelessWidget {
  const Ndrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 19, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 17,
              ),
              Draweritem(
                name: 'Edit Profile',
                icon: Icons.people,
                onPressed: () => onItempressd(context, index: 0),
              ),
              const SizedBox(
                height: 20,
              ),
              Draweritem(
                name: 'Complaint',
                icon: Icons.comment,
                onPressed: () => onItempressd(context, index: 1),
              ),
              const SizedBox(
                height: 20,
              ),
              Draweritem(
                name: 'Company Rate',
                icon: Icons.rate_review,
                onPressed: () => onItempressd(context, index: 2),
              ),
              const SizedBox(
                height: 20,
              ),
              Draweritem(
                name: 'About Us',
                icon: Icons.contact_page,
                onPressed: () => onItempressd(context, index: 3),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Draweritem(
                name: 'Logout',
                icon: Icons.logout,
                onPressed: () => onItempressd(context, index: 4),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItempressd(BuildContext context, {int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => UpdateProfileScreen()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Complain()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;

      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Mainpage()));
        break;

      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn()));
        break;

      default:
        Navigator.pop(context);
        break;
    }
  }

  Widget headerWidget() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("images/hosny.png"),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          children: [
            Text(
              "hosny ishtaya",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "hosnyish812@gmail.com.",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
