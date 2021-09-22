import 'package:flutter/material.dart';
import 'package:shpl/Favorite.dart';
import 'package:shpl/ListNavigation.dart';
import 'package:shpl/Map.dart';
import 'package:shpl/Profile.dart';
import 'package:shpl/Settings.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(194, 135, 153, 1),
                ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://klike.net/uploads/posts/2019-05/1558767867_24.jpg'),
                radius: 50,
              ),

              accountName: Text("Username", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              accountEmail: Text("Number: +79375862487", style: TextStyle(
                fontSize: 15,
              ),),
             // child: Text("Drawer Header"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
               // SettingsNav();
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsNav()));
              },
            ),
          ],
        ),
      );
  }
}
