import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo2/theme_data.dart';

class ListItemCalender extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Slidable(
        startActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (_){},
              backgroundColor: MyThemeData.red,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white
          ),
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Theme.of(context).primaryColor,
                ),
                width: 10,
                height:80,
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("The Name of the Task ",style: Theme.of(context).textTheme.titleMedium,),
                   SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.access_time),
                        Text("10:11",style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 21),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child:Icon(Icons.check,color: Colors.white,size: 26,),
              )
            ],
          ),

        ),
      ),
    );
  }
}
