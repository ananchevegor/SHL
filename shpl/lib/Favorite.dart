import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("favorite"),
        backgroundColor: Color.fromRGBO(184, 134, 11, 1),
      ),
    );
  }
}