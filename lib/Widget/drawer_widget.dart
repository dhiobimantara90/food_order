import 'package:coba_1/cartpage.dart';
import 'package:coba_1/edit_profile.dart';
import 'package:coba_1/homepage.dart';
import 'package:coba_1/login.dart';
import 'package:coba_1/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 22, 6),
              ),
              accountName: Text(
                "Dhio Bimantara",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "dhiobimantara90@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/avatar.jpg"),
              ),
            ),
          ),
          //List Tile
          ListTile(
            leading: const Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title: const Text("Home",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
                ),
          //List Tile
          ListTile(
            leading: const Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            title: const Text("My Account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditProfilePage()),
              );
            },
          ),
          //List Tile
          ListTile(
            leading: const Icon(
              CupertinoIcons.cart_fill,
              color: Colors.red,
            ),
            title: const Text(
              "My Orders",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              CupertinoIcons.settings,
              color: Colors.red,
            ),
            title: const Text("Settings",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
                 onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingPageUI()),
                );
            },
          ),
          //List Tile
          ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: const Text("Logout",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              }),
        ],
      ),
    );
  }
}
