import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
class SharedPref extends StatefulWidget {
  const SharedPref({Key? key}) : super(key: key);
  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  late SharedPreferences logindata;
  late String email;
  void initState(){
    super.initState();
    initial();
  }
  void initial()async{
    logindata=await SharedPreferences.getInstance();
    setState(() {
      email=logindata.getString('email')!;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
