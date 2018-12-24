import 'package:flutter/material.dart';

void main() => runApp(PTHLAB());

class PTHLAB extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PTH LAB',
      theme: ThemeData(
        
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginPage(title: 'PTH LAB'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
              padding: new EdgeInsets.fromLTRB(70, 5, 70, 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username"
                ),
              )
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(70, 5, 70, 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password"
                ),
                obscureText: true,
              )
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(70, 5, 70, 5),
              child: RaisedButton(
                child: const Text('LOGIN',),
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                splashColor: Colors.blueGrey,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PTH LAB"),
      ),
      body: Center(
        child: Text('data')
      ),
    );
  }
 
}


