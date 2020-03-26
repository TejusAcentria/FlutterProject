import 'dart:math';

import 'package:flutter/material.dart';

class FirstClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          genterateLuckNumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
    );
  }

  String genterateLuckNumber() {
//    var random = Random();
//    int numbe = random.nextInt(10);
    return "Lucky number iss    ${Random().nextInt(10)}";
  }
}
