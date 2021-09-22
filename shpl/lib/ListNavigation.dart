import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shpl/Drawer.dart';

class ListNavigation extends StatelessWidget {
  const ListNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
        backgroundColor: Color.fromRGBO(194, 135, 153, 1),
      ),
      drawer: DrawerNav(),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Search(),
        ],
      ),
    );
  }
}
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onChanged: (String value){
        print('The text has changed to: $value');
      },
      onSubmitted: (String value){
        print('submited text: $value');
      },
    );
  }
}

