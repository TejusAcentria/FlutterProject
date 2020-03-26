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
  var currrency = ['Rupees', 'Dollar', 'Pounds'];
  var _currenctValueSelect = 'Rupees';

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
            DropdownButton<String>(
              items: currrency.map((String dropDownStrinItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStrinItem,
                  child: Text(dropDownStrinItem),
                );
              }).toList(),
              onChanged: (String newValueSelect) {
                _onDropDownItemSelected(newValueSelect);

              },
              value: currrency[2],
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your city is $_currenctValueSelect",
                  style: TextStyle(fontSize: 15.0),
                ))
          ],
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelect) {

    setState(() {
      this._currenctValueSelect=newValueSelect;
    });
  }
}

//void showSnakBar(BuildContext context) {
//  var snackBAr = SnackBar(content: Text("Empty"));
//
//  Scaffold.of(context).showSnackBar(snackBAr);
//}
