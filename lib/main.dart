import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo2/HomeScreen/genral/homescreen.dart';
import 'package:todo2/firebase_options.dart';
import 'package:todo2/theme_data.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp()) ;
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TO Do",
      routes: {
        Homescreen.HomeSrcreenRoutName:(_)=>Homescreen(),
      },
      initialRoute: Homescreen.HomeSrcreenRoutName,
      theme: MyThemeData.lightTheme,
    );
  }
}
