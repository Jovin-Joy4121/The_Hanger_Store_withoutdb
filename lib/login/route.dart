import 'package:flutter/material.dart';
import 'package:hangerstore_test/login/loginpage.dart';
import 'package:hangerstore_test/login/registerpage.dart';
import 'package:hangerstore_test/login/homepage.dart';
import 'package:hangerstore_test/screen/details/hanger/bottomnav.dart';
import 'package:hangerstore_test/screen/details/hanger/cart.dart';
import 'package:hangerstore_test/screen/details/hanger/my_orders.dart';
import 'package:hangerstore_test/screen/details/hanger/profile.dart';
import 'package:hangerstore_test/screen/details/hanger/wishlist.dart';
import 'package:hangerstore_test/screen/home/hanger.dart';
import 'package:hangerstore_test/screen/splashscreen.dart';

import '../screen/details/hanger/myorders2.dart';
const String loginPage="login";
const String homePage="home";
const String registerPage="register";
const String splashScreen="splashscreen";
const String homeScreen="homescreen";
const String hanger="hanger";
const String myorders="myorders";
const String myorders2="myorders2";
const String profile="profile";
const String wishlist="wishlist";
const String cart="cart";
const String botnav="bottomnavigation";

void login(){}
Route<dynamic> controller(RouteSettings settings){
  switch(settings.name){
    case loginPage:
      return MaterialPageRoute(builder: (context)=>LoginPage());
    case homePage:
      return MaterialPageRoute(builder: (context)=>HomePage());
    case registerPage:
      return MaterialPageRoute(builder: (context)=>RegisterPage());
    case splashScreen:
      return MaterialPageRoute(builder: (context)=>SplashScreen());
    case hanger:
      return MaterialPageRoute(builder: (context)=>Hanger());
    case myorders:
      return MaterialPageRoute(builder: (context)=>Myorders());
    case profile:
      return MaterialPageRoute(builder: (context)=>ProfilePage());
    case wishlist:
      return MaterialPageRoute(builder: (context)=>WishList());
    case botnav:
      return MaterialPageRoute(builder: (context)=>BotNav());
    case cart:
      return MaterialPageRoute(builder: (context)=>Cart());
    case myorders2:
      return MaterialPageRoute(builder: (context)=>VideoApp());
    default:
      throw('This route name does not exist');
  }
}
