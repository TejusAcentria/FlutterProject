import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "WorkingApp",
    home: FavouriteCity(),
  ));
}

class FavouriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity> {
  String nameCity = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull App'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
//              onSubmitted: (String userInput) {
//                setState(() {
//                    nameCity = userInput;
//                });
//              },
            maxLength: 10,
            onChanged: (String userInput) {
                setState(() {
                    nameCity = userInput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your city is $nameCity",
                  style: TextStyle(fontSize: 15.0),
                ))
          ],
        ),
      ),
    );
  }
}

//void showSnakBar(BuildContext context) {
//  var snackBAr = SnackBar(content: Text("Empty"));
//
//  Scaffold.of(context).showSnackBar(snackBAr);
//}
