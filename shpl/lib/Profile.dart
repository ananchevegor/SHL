import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, this.backgroundImage}) : super(key: key);

  final ImageProvider? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
          backgroundColor: Colors.red,
      ),
      body: Row(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 30, horizontal: 65)),
              CircleAvatar(
                backgroundImage: NetworkImage('https://klike.net/uploads/posts/2019-05/1558767867_24.jpg'),
                radius: 35,
              )
            ],
          )
        ],
      ),
    );
  }
}