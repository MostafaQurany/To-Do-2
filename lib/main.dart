import 'package:flutter/material.dart';
import 'package:todo2/HomeScreen/homescreen.dart';
import 'package:todo2/theme_data.dart';

void main()=>runApp(MyApp());



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
