import 'package:flutter/material.dart';
import 'package:shpl/favorite/favoriteService.dart';
import 'Drawer.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("favorite"),
        backgroundColor: Color.fromRGBO(194, 135, 153, 1),
      ),
      drawer: DrawerNav(),
      body: FavoriteService(),
    );
  }
}