import 'package:flutter/material.dart';

void main() {
//  runApp(MaterialApp(
//    title: "Exploring UI Widgets",
//    home: Scaffold(
//      appBar: AppBar(title: Text("ListView Example"),),
//      body: getListElements()
//      //      body: getListView()
//    ),
//  ));
  runApp(MaterialApp(
    title: "Exploring ListView",
    home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Example"),
        ),
        body: getListView()),
  ));
}

//Widget getListView() {
//  var listView = ListView(
//    children: <Widget>[
//      ListTile(
//        leading: Icon(Icons.landscape),
//        title: Text("Landscape"),
//        subtitle: Text("Beautiful View !!"),
//        trailing: Icon(Icons.wb_sunny),
//        onTap: (){
//          debugPrint("Landscape tapped");
//        },
//      ),ListTile(
//        leading: Icon(Icons.landscape),
//        title: Text("Landscape"),
//        subtitle: Text("Beautiful View !!"),
//        trailing: Icon(Icons.wb_sunny),
//      ),ListTile(
//        leading: Icon(Icons.landscape),
//        title: Text("Landscape"),
//        subtitle: Text("Beautiful View !!"),
//        trailing: Icon(Icons.wb_sunny),
//      ),
//
//      Text("Yet another element in list",textDirection: TextDirection.ltr,textAlign: TextAlign.center,),
//      Container(color: Colors.deepOrange,height: 40.0)
//    ],
//  );
//  return listView;
//}

List<String> getListElements() {
  var item = List<String>.generate(1000, (counter) => "item $counter");
  return item;
}

Widget getListView() {
  var listElements = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listElements[index]),
      onTap: (){
        debugPrint('Tapped ${listElements[index]}');
      },
    );
  });

  return listView;
}
