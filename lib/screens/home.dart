import 'package:bites_07/screens/cart.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


int _currentIndex = 0;


class _HomeScreenState extends State<HomeScreen> {

  void ChangePage(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  final pages =  [ const CartScreen(), CartScreen(), CartScreen(), CartScreen() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
        backgroundColor: Color(0xff741314),
      ),

      body: pages[_currentIndex],

      bottomNavigationBar: DotNavigationBar(
        currentIndex:  _currentIndex,
        onTap: ChangePage,
        dotIndicatorColor: Colors.transparent,
        items: [
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Colors.purple,
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              selectedColor: Colors.pink,
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(Icons.search),
              selectedColor: Colors.orange,
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person),
              selectedColor: Colors.teal,
            ),
      ]),
    );
  }
}