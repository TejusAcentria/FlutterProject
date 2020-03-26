import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0,top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        "Spice Jet",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
//                            fontFamily: 'Raleway',
//                            fontWeight: FontWeight.w300,
//                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      )),
                  Expanded(
                      child: Text(
                        "From Jaipur to Delhi",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
//                            fontFamily: 'Raleway',
//                            fontWeight: FontWeight.w300,
//                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      )),
                  Expanded(
                      child: Text(
                        "Deprature",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
//                            fontFamily: 'Raleway',
//                            fontWeight: FontWeight.w300,
//                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        "Spice Jet",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
//                            fontFamily: 'Raleway',
//                            fontWeight: FontWeight.w300,
//                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      )),
                  Expanded(
                      child: Text(
                        "From Jaipur to Delhi",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
//                            fontFamily: 'Raleway',
//                            fontWeight: FontWeight.w300,
//                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      )),
                  Expanded(
                      child: Text(
                        "Deprature",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
//                            fontFamily: 'Raleway',
//                            fontWeight: FontWeight.w300,
//                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      )),
                ],
              ), Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        "Spice Jet",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
//                            fontFamily: 'Raleway',
//                            fontWeight: FontWeight.w300,
//                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      )),
                  Expanded(
                      child: Text(
                        "From Jaipur to Delhi",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
//                            fontFamily: 'Raleway',
//                            fontWeight: FontWeight.w300,
//                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      )),
                  Expanded(
                      child: Text(
                        "Deprature",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
//                            fontFamily: 'Raleway',
//                            fontWeight: FontWeight.w300,
//                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      )),
                ],
              ),
              FlightImageAssest()
            ],
          )),
    );
  }
}

class FlightImageAssest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage=AssetImage('images/images.jpg');
    Image image=Image(image: assetImage,width: 250.0,height: 250.0);
    return Container(child: image);
  }

}