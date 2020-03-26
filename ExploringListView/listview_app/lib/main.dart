import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring ListView",
    home: Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("clicked Fab");
        },
        child: Icon(Icons.add),
        tooltip: 'Add more item',
      ),
    ),
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
  var item = List<String>.generate(999, (counter) => "item ${counter+1}");
  return item;
}

Widget getListView() {
  var listElements = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listElements[index]),
      onTap: () {
        showSnakBar(context, listElements[index],"You clicked");
      //  alertDialod(context, listElements[index]);
      },
    );
  });

  return listView;
}

void showSnakBar(BuildContext context, String type,String title) {
  var snackBAr = SnackBar(
    content: Text("${title} ${type}"),
    action: SnackBarAction(
      label: "Undo",
      onPressed:(){
        var titles="you revert";
        showSnakBar(context, type,titles);
      } ,
    ),
  );

  Scaffold.of(context).showSnackBar(snackBAr);
}

void alertDialod(BuildContext context, String type) {
  var alert = AlertDialog(
    title: Text("You have pressed  $type"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
