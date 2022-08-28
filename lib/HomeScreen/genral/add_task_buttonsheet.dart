import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Text("Add new Task "),
            TextFormField(
              decoration: InputDecoration(

                hintText:"Name of Task",
              ),
            )
          ],
        ));
  }
}
