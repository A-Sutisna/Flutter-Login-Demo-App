import 'package:flutter/material.dart';

///widget lodiing apps
Widget wAppLoading() {
  return Container(
    color: Colors.white,
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}

Widget wAuthtitle(String title, String subtitle) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 3),
        Text(subtitle),
      ],
    ),
  );
}
