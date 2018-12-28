import 'package:flutter/material.dart';
import 'package:pth_lab/Views/HomePage.dart';
import 'package:pth_lab/Services/LoginService.dart';

//This class is responsible for showing the Main Page
class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

//This class is responsible for showing the Main Page
class _LoginPageState extends State<LoginPage> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: new EdgeInsets.fromLTRB(70, 5, 70, 5),
              child: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',
                      height: 70,)
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(70, 0, 70, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "အသုံးပြုသူအမည်"
                ),
                controller: usernameController,
              )
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(70, 0, 70, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "စကားဝှက်"
                ),
                controller: passwordController,
                obscureText: true,
              )
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(70, 5, 70, 5),
              child: new SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  child: const Text('၀င်ရောက်မည်',),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                    if(checkAuthorized(usernameController.text,passwordController.text))
                    {
                      Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => HomePage()),
                                    );
                    }
                    else
                    {
                      return showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            content: Text("အသုံးပြုသူအမည် နဲ့ စကားဝှက်မှားယွင်းနေပါသည်။ \n"),
                          );
                        }
                      );
                    }
                  },
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}