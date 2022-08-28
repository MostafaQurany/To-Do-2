import 'package:flutter/material.dart';
import 'package:todo2/HomeScreen/genral/add_task_buttonsheet.dart';
import 'package:todo2/HomeScreen/lisrt/listScreen.dart';
import 'package:todo2/HomeScreen/settings/settingsScreen.dart';

class Homescreen extends StatefulWidget {
  static const String HomeSrcreenRoutName= "HomneScreen";

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int csetrnindex=0;

  var tabs=[ListScreen(),SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("To Do")),),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 18,
        child: BottomNavigationBar(
          currentIndex:csetrnindex ,
          onTap: (indix){
            setState((){csetrnindex=indix;});
          },
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.settings),label:""),
            BottomNavigationBarItem(icon: Icon(Icons.list),label:""),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 4
          )
        ),
        onPressed: () {
          showAddTaskButtonSheet();
        },
        child:   Icon(Icons.add, size: 32,),
      ),
      body: tabs[csetrnindex],
    );
  }
  void showAddTaskButtonSheet(){
    showModalBottomSheet(context: context, builder:(builderContext){
return AddTaskBottomSheet();
    });
  }

}
