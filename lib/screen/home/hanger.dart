import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangerstore_test/constants.dart';
import 'package:hangerstore_test/login/loginpage.dart';
import 'package:hangerstore_test/login/route.dart';
import 'package:hangerstore_test/screen/home/components/body.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../details/hanger/bottomappbar.dart';
import '../details/hanger/bottomnav.dart';

class Hanger extends StatefulWidget {
  const Hanger({Key? key}) : super(key: key);

  @override
  State<Hanger> createState() => _HangerState();
}
class _HangerState extends State<Hanger> {
   SharedPreferences? logindata;
    String? name;
  @override
  void initState(){
    super.initState();
    initial();
  }
  void initial()async{
    logindata=await SharedPreferences.getInstance();
    setState(() {
      name=logindata!.getString('name')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: SafeArea(
            child: Column(
              children: [
                CircleAvatar(
                  child: Image(image: AssetImage('assets/images/hanger.jpeg'),),
                  backgroundColor: Colors.white,
                  radius: 35,

                ),
                ListTile(
                  leading: Icon(Icons.person_outline_rounded, color: Colors.black45),
                  title: Text("$name", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, myorders),
                  child: ListTile(
                    leading: Icon(Icons.shopping_bag_outlined, color: Colors.black45,),
                    title: Text("My Orders", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                // Divider(),
                ExpansionTile(leading: Icon(Icons.settings_outlined,color: Colors.black45,),
                  title:Text("Settings",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  children: <Widget>[Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Icon(Icons.notifications_on_outlined),
                          Text("Notifications"),
                          Switch(value: false,
                            onChanged: Future.value,
                            activeColor: Colors.grey,
                            activeTrackColor: Colors.white,
                          ),
                        ],
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Icon(Icons.format_paint_outlined),
                          Text("Theme"),
                          Switch(value: false,
                            onChanged:Future.value,
                            activeColor: Colors.black,
                            activeTrackColor: Colors.black54,),
                        ],
                      )
                    ],
                  )

                  ],),
                ExpansionTile(leading: Icon(Icons.wifi_calling_3,color: Colors.black45,),
                  title:Text("Customer care",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  children: <Widget>[Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.help_outline_outlined, color: Colors.black45),
                        title: Text("Help & Support", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      ListTile(
                        leading: Icon(Icons.privacy_tip_outlined, color: Colors.black45),
                        title: Text("Privacy & Policy", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  )

                  ],),
                GestureDetector(
                  onTap: (){
                    logindata!.setBool('login', true);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.logout_outlined, color: Colors.black45,),
                    title: Text("Logout", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>exit(0),
                  child: ListTile(
                    leading: Icon(Icons.exit_to_app_outlined, color: Colors.black45,),
                    title: Text("Exit", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
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
      ],
    );
  }
}
