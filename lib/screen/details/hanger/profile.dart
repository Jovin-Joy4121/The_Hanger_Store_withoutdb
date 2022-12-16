
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hangerstore_test/screen/details/hanger/bottomnav.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';
import 'bottomappbar.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  SharedPreferences? logindata;
  var phonenumber,email,name;
  @override
  void initState(){
    super.initState();
    initial();
  }
  void initial()async{
    logindata=await SharedPreferences.getInstance();
    setState(() {
      name=logindata!.getString('name');
      email=logindata!.getString('email');
      print(phonenumber);
      phonenumber=logindata?.getString('phone');

    });
  }
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
      body: ListView(
        children:[ Text("My account",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
          Column(
            children: [
              Text("Name:$name",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
              Text("Phone no:$phonenumber",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
              Text("Email:$email",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
            ],
          ),

      ]
      ),
    );
  }
}
