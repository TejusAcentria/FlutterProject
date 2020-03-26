import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
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
              ),
//              FlightImageAssest()
              FlightBookButton()
            ],
          )),
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20.0),
      width: 250.0,
      height: 60.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Book your flight",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          elevation: 5.0,
          onPressed: () {
            boookFlight(context);
          }),
    );
  }

  void boookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasent flight"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}

