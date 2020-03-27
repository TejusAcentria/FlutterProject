import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginapp/Activities/main_screen.dart';
void main() {
  runApp(MaterialApp(
    title: 'Signup form',
    home: SignupForm(),
  ));
}

class SignupForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _signFromField();
  }
}

class _signFromField extends State<SignupForm> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign-Up page'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: firstNameController,
                      decoration: InputDecoration(
                          hintText: 'First Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(7.0),
                  ),
                  Expanded(
                    child: TextField(
                      controller: lastnameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Last Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Email Id',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: mobileController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Mobile number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: confirPasswordController,
                decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                child: Text(
                  'Submit',
                ),
                onPressed: () {
                  checkValues();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void checkValues() {
    setState(() {
      if (isValidate()) {
        toNextScreen(firstNameController.text);
      }
    });
  }

  bool isValidate() {
    var result = true;

    if (firstNameController.text.isEmpty) {
      result = false;
      debugPrint("Firsts Names is empty");
    } else if (lastnameController.text.isEmpty) {
      result = false;
      debugPrint("Last Name is empty");
    } else if (emailController.text.isEmpty) {
      result = false;
      debugPrint("Email is empty");
    } else if (mobileController.text.isEmpty) {
      result = false;
      debugPrint("mobile is empty");
    } else if (passwordController.text.isEmpty) {
      result = false;
      debugPrint("password is empty");
    } else if (confirPasswordController.text != passwordController.text) {
      result = false;
      debugPrint("password not match");
    }

    return result;
  }

  void toNextScreen(String text) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SetupMainScreen()),
    );
  }
}
