import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo2/HomeScreen/lisrt/listItem.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(Duration(days: 356)),
          lastDate: DateTime.now().add(Duration(days: 356)),
          onDateSelected: (date) => {
            // on click the day do function
          },
          leftMargin: 20,
          monthColor: Colors.black,
          dayColor: Colors.black,
          activeDayColor: Colors.white,
          activeBackgroundDayColor: Theme.of(context).primaryColor,
          dotsColor: Colors.white,
          locale: 'en_ISO',
        ),
        Expanded(child: ListView.builder(itemBuilder:(context,index){
          return ListItemCalender();
        },itemCount: 15,))
      ],
    );
  }
}
