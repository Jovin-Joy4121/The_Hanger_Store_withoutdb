import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hangerstore_test/constants.dart';
import 'package:hangerstore_test/screen/details/hanger/bottomnav.dart';

import 'bottomappbar.dart';

class Myorders extends StatefulWidget {
  const Myorders({Key? key}) : super(key: key);

  @override
  State<Myorders> createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
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
        child: Container(
          child: Text("My Orders",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
        ),
      ),

    );
  }
}
