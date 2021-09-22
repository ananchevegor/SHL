import 'package:flutter/material.dart';
import 'package:shpl/Drawer.dart';

class onMap extends StatelessWidget {
  const onMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map"),
          backgroundColor: Color.fromRGBO(194, 135, 153, 1)
      ),
      drawer: DrawerNav(),
    );
  }
}