import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangerstore_test/login/route.dart' as route;
import 'package:hangerstore_test/login/homepage.dart';
import 'package:hangerstore_test/screen/splashscreen.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((value) => runApp(MyApp()));

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'HangerStore',
      home: SplashScreen(),
      onGenerateRoute: route.controller,
      initialRoute: route.splashScreen,
    );
  }
}
