import 'package:flutter/material.dart';
import 'package:shpl/favorite/BoxFavoriteShop.dart';

class FavoriteService extends StatefulWidget {
  const FavoriteService({Key? key}) : super(key: key);

  @override
  _FavoriteServiceState createState() => _FavoriteServiceState();
}

class _FavoriteServiceState extends State<FavoriteService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BoxFavoriteShop()
        ],
      )
    );
  }
}
