import 'package:flutter/material.dart';
import 'package:training/screens/favorite.dart';
import 'package:training/screens/home_page.dart';
import 'package:training/screens/order.dart';
import 'package:training/screens/profile.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedpage = 0;
  final pageOptions = [
    Profile(),
    Favorite(),

    Text('item 2'),
    Text('item 2'),
    Order(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pageOptions[selectedpage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedpage,
          onTap: (int index) {
            setState(() {
              selectedpage = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.perm_identity,color: Colors.black,size: 30,),title: Text(''),),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded,color: Colors.black,size: 30,),title: Text(''),),
            BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard,color: Colors.black,size: 30,),title: Text(''),),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,size: 30,),title: Text(''),),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,size: 30,),title: Text(''),),

          ],
        ));
  }
}
