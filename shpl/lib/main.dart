import 'package:flutter/material.dart';
import 'package:shpl/ListNavigation.dart';
import 'package:shpl/Map.dart';
import 'package:shpl/MapLocation.dart';
import 'package:shpl/Profile.dart';

import 'Favorite.dart';

void main() => runApp(const MyApp());

 class MyApp extends StatelessWidget {
   const MyApp({Key? key, items}) : super(key: key);


   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       home: MyStatfulWidget(),
     );
   }
 }
 
 class MyStatfulWidget extends StatefulWidget {
   const MyStatfulWidget({Key? key}) : super(key: key);
 
   @override
   _MyStatfulWidgetState createState() => _MyStatfulWidgetState();
 }
 
 class _MyStatfulWidgetState extends State<MyStatfulWidget> {
   int currentIndex = 0;

   static List<Widget> _widgetOptions = <Widget>[
     ListNavigation(),
     Favorite(),
     // ignore: unnecessary_const
     onMap(),

   ];
   void _onItemTupped(int index){
     setState(() {
       currentIndex = index;
     });
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: const Color.fromRGBO(255,255,255,1),
       body: _widgetOptions[currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: currentIndex,
         onTap: _onItemTupped,
         items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
               icon: Icon(Icons.format_list_numbered),
               label: 'LIST',
               backgroundColor: Color.fromRGBO(0, 0, 139, 1),
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.star),
               label: 'FAVORITES',
             backgroundColor: Color.fromRGBO(184, 134, 11, 1),
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.map_outlined),
               label: 'MAP',
               backgroundColor: Colors.black
           ),
         ],
       ),
     );
   }
 }
 
 

