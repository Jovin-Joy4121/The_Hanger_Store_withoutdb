import 'package:flutter/material.dart';
import 'package:hangerstore_test/screen/details/hanger/cart.dart';
import 'package:hangerstore_test/screen/details/hanger/profile.dart';
import 'package:hangerstore_test/screen/details/hanger/wishlist.dart';
import 'package:hangerstore_test/screen/home/hanger.dart';
class BotNav extends StatefulWidget {
  const BotNav({Key? key}) : super(key: key);

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  int _selectedIndex=0;
  List<Widget> _widgetOptions=<Widget>[
    Hanger(),
    WishList(),
    ProfilePage(),
    Cart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: '',
            activeIcon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline_outlined,
              color: Colors.red,
            ),
            label: '',
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            label: '',
            activeIcon: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            label: '',
            activeIcon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },

      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
