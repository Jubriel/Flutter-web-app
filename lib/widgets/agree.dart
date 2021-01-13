import 'package:flutter/material.dart';

class Aggrenment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            Container(
              width: 80.0,
              child: Text(
                "Is It in an Estate",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
            SizedBox(
              width: 80.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.blue[50],
              child: Icon(Icons.done),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 50.0,
              child: Text(
                "Yes",
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: 50.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.blue[50],
              child: Icon(Icons.clear),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 50.0,
              child: Text(
                "No",
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: 10.0,
            )
          ],
        );
      },
    );
  }
}
