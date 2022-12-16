import 'package:flutter/material.dart';
import 'package:hangerstore_test/screen/home/hanger.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../Animations/fadedanimation.dart';
import 'package:hangerstore_test/login/route.dart'as route;

import '../screen/details/hanger/bottomnav.dart';
import '../screen/details/hanger/bottomnav.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  var _formkey=GlobalKey<FormState>();
  bool _visible=true;
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;
  @override
  void initState(){
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login()async{
    logindata=await SharedPreferences.getInstance();
    newuser=(logindata.getBool('login')??true);
    print(newuser);
    if(newuser==false){
      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>BotNav()));
    }
  }
  // @override
  // void dispose(){
  //   emailController.dispose();
  //   passwordController.dispose();
  // }
  void _submit(){
    final isValid =_formkey.currentState!.validate();
    if(!isValid){
      return;
    }
    _formkey.currentState?.save();
    Navigator.pushNamed(context, route.botnav);
    String email=emailController.text;
    String password=passwordController.text;
    if(email !=''&& password !=''){
      print('Successful');
      logindata.setBool(('login'), false);
      logindata.setString('email',email);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const BotNav()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/whln.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: FadeAnimation(1.6, Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Center(
                        child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                      ),
                    )),
                  )
                ],
              ),

                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Form(
                          key:_formkey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: emailController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.black38)
                                  ),

                                  validator: (value){
                                    if(value!.isEmpty ||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                                      return "Enter Valid Email";
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: _visible,
                                  decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: (){
                                        showPassword();
                                      },
                                        child: Icon(Icons.remove_red_eye_outlined)),
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.black38)
                                  ),
                                    validator: (value){
                                      if (value!.isEmpty) {
                                        return 'Enter your password';
                                      }
                                      if (value.length<6)
                                      {  return 'Password must be more than 6 Letters';
                                      }
                                      if (value.length>12)
                                      {  return 'Password must not be more than 12 Letters';
                                      }
                                      if (RegExp(r'^(?=^.{6,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$').hasMatch(value)) {
                                        return null;
                                      }
                                      else {
                                        return "Passsword should Contain atleast 1 symbol,Uppercase or number";
                                      }
                                    }
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(2, GestureDetector(
                        onTap: ()=>_submit(),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.grey,
                                    Color.fromRGBO(255,220,198,195,),
                                    Colors.grey,
                                  ]
                              )
                          ),
                          child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),

                          ),
                        ),
                      )),
                      SizedBox(height: 70,),
                      FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Colors.black38),)),

                      Container(
                        padding: EdgeInsets.all(20),
                      ),
                      GestureDetector(
                        onTap:()=>Navigator.pushNamed(context, route.registerPage),
                        child: FadeAnimation(2, Text("Create New Account",style: TextStyle(color: Colors.black38),))
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
  void showPassword(){
    setState(() {
      _visible=!_visible;
    });
  }
}