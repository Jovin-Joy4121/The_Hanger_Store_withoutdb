import 'package:flutter/material.dart';
import 'package:hangerstore_test/login/route.dart';
import 'package:hangerstore_test/screen/details/hanger/profile.dart';
import 'package:hangerstore_test/screen/details/hanger/wishlist.dart';

import '../../home/hanger.dart';
import 'cart.dart';
class BNBar extends StatefulWidget {
  const BNBar({Key? key}) : super(key: key);

  @override
  State<BNBar> createState() => _BNBarState();
}
class _BNBarState extends State<BNBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row( //children inside bottom appbar
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          IconButton(icon: Icon(Icons.home_outlined, color: Colors.black,), onPressed: ()=>Navigator.pushNamed(context, hanger) ),
          IconButton(icon: Icon(Icons.favorite_outline,color: Colors.red,), onPressed: ()=>Navigator.pushNamed(context, wishlist),),
          IconButton(icon: Icon(Icons.person_outline,color: Colors.black ), onPressed: ()=>Navigator.pushNamed(context, profile) ,),
          IconButton(icon: Icon(Icons.shopping_cart_outlined, color: Colors.black), onPressed: ()=>Navigator.pushNamed(context, cart),),
        ],
      ),

    );
  }
}


