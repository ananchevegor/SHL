import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
                radius: 45,
              ),
            ],
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 38)),
              Text("Username", style: TextStyle(
                  fontWeight: FontWeight.w900,
                fontSize: 20
              ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Text("Phone: +79315862487", style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}