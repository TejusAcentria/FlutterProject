import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: SetupMainScreen(),

  ));
}

class SetupMainScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child:  ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: [
              Center(child: new Text('Hellow'))
            ]
        ),
      ),
    );
  }
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//
//    return SetupMainFields();
//  }

}

//class SetupMainFields extends State<SetupMainScreen>{
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: new AppBar(
//        title: Text('Home Screen'),
//      ),
//      body: Center(
//        child:  ListView(
//            shrinkWrap: true,
//            padding: const EdgeInsets.all(20.0),
//            children: [
//              Center(child: new Text('ABC $text'))
//            ]
//        ),
//      ),
//    );
//  }
//
//}