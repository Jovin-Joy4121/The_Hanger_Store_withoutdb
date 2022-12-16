import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hangerstore_test/login/route.dart'as route;
import 'package:hangerstore_test/login/route.dart';
import 'package:hangerstore_test/screen/home/hanger.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../Animations/backgroundimage.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        BackgroundImage(
          image: 'assets/images/bd.jpeg',
        ),
        Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/cart.svg',
                  color: kTextColor,
                )),
            SizedBox(width: kDefaultPadding / 2),
          ],
          iconTheme: IconThemeData(color: Colors.black45),
          centerTitle: true,
          title: Image(
            image: AssetImage('assets/images/hsa1.png'),
          ),
          titleSpacing: 00.0,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //       bottomRight: Radius.circular(25),
          //       bottomLeft: Radius.circular(25)),
          // ),
          elevation: 5,
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: SafeArea(
            child: Column(
              children: [
                CircleAvatar(
                  child: Image(image: AssetImage('assets/images/hanger1.jpg'),),
                  backgroundColor: Colors.white,
                  radius: 35,

                ),
                ListTile(
                  leading: Icon(Icons.circle_outlined, color: Colors.black45),
                  title: Text("About Us", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag_outlined, color: Colors.black45,),
                  title: Text("My Orders", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
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
                        activeTrackColor: Colors.blueGrey,
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
                ListTile(
                  leading: Icon(Icons.logout_outlined, color: Colors.black45,),
                  title: Text("Logout", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                ),

              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: ListView(
            children: [
              Container(
                width: 500,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(image:AssetImage('assets/images/bhs.jpg'),fit: BoxFit.fill

                    )
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child:Text(
                    'CATEGORY',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: ()=>Navigator.pushNamed(context, hanger),
                      child: Container(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Hanger",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(image:AssetImage('assets/images/hc.jpg') ),
                            // backgroundBlendMode:BlendMode.darken,
                          border: Border.all(
                            width: 2.5,
                            color:Colors.black45,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.all(20),
                        width: 150,
                        height: 150,
                      ),
                    ),
                     Container(

                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Body Hanger",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,),),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(image:AssetImage('assets/images/bc.jpg') ),
                          // backgroundBlendMode:BlendMode.darken,
                            border: Border.all(
                              width: 2.5,
                              color:Colors.black45,
                            ),
                            borderRadius: BorderRadius.circular(25),

                        ),
                        padding: EdgeInsets.all(20),
                        width: 150,
                        height: 150,
                      ),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Shoe Hook",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,),),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(image:AssetImage('assets/images/sc.jpg')),
                            // backgroundBlendMode:BlendMode.darken,
                            border: Border.all(
                              width: 2.5,
                              color:Colors.black45,
                            ),
                            borderRadius: BorderRadius.circular(25),

                        ),
                        padding: EdgeInsets.all(20),
                        width: 150,
                        height: 150,
                      ),

                    Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Mannequinn",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,),),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(image:AssetImage('assets/images/mc.jpg') ),
                        // backgroundBlendMode:BlendMode.darken,
                        border: Border.all(
                          width: 2.5,
                          color:Colors.black45,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.all(20),
                      width: 150,
                      height: 150,
                    )
                  ],
                ),
              ),

      ],
          ),
        ),
      ),]
    );
  }
}

