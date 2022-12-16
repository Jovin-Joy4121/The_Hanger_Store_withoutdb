import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hangerstore_test/login/loginpage.dart';
import 'package:hangerstore_test/login/route.dart';
import 'package:hangerstore_test/screen/details/hanger/bottomnav.dart';
import 'package:hangerstore_test/screen/home/hanger.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>LoginPage()
            )));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: ListView(
            children:[ Column(
              children: [
                Container(
                    width: 200,
                    height :250
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    //width: MediaQuery.of(context).size.width,
                    color:Colors.white,
                    child: Image(
                      image: AssetImage('assets/images/hsa1.png'),
                    ),
                  ),
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  color: Colors.black87,
                  strokeWidth: 5,
                )
              ],
            ),
            ]
        ),
      ),
    );
  }
}
