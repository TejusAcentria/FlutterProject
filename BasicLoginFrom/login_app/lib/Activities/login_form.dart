import 'package:flutter/material.dart';
import 'package:loginapp/Activities/signup_form.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Login Page',
    home: LoginForm(),
    theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent),
  ));
}

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _submitLoginForm();
  }
}

class _submitLoginForm extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            getImageAssest(),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email Id',
                    hintText: 'Email Id',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: passwordController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                textColor: Theme.of(context).primaryColorDark,
                child: Text(
                  'Submit',
                ),
                onPressed: () {
                  checkValues();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                textColor: Theme.of(context).primaryColorDark,
                child: Text(
                  'Register??',
                ),
                onPressed: () {
                  tonextScreen();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkValues() {
    setState(() {
      if (emailController.text.isEmpty) {
        debugPrint('email is empty');
      } else if (passwordController.text.isEmpty) {
        debugPrint('password is empty');
      } else {
        debugPrint('Success');
      }
    });
  }

  void tonextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignupForm()),
    );
  }
}

Widget getImageAssest() {
  AssetImage assetImage = AssetImage('images/images.jpg');
  Image image = Image(
    image: assetImage,
  );
  return Container(
    child: image,
  );
}
