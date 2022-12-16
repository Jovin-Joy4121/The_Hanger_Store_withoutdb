import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hangerstore_test/models/Product.dart';
import 'package:hangerstore_test/models/Product.dart';

import '../../../constants.dart';
import '../../../login/route.dart';
import 'bottomappbar.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Image(
          image: AssetImage('assets/images/hsa1.png'),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: kTextColor,
              )),

          SizedBox(width: kDefaultPadding / 2),
        ],),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Text("Cart",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
            ),
            Container(
              width: 150,
              height: 50,
              child: TextButton(
                onPressed: ()=>Navigator.pushNamed(context,myorders),
                child: Text(
                  'buy now'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black)
                        )
                    )
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}

