import 'package:flutter/material.dart';

class SettingsNav extends StatelessWidget {
  const SettingsNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Color.fromRGBO(194, 135, 153, 1),
      ),
    );
  }
}
