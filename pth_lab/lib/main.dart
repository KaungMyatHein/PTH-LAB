import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
              child: new SizedBox(
                width: double.infinity,
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
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("PTH Lab"),
              currentAccountPicture: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
              accountEmail: null,
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.deepOrange,),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.code,color: Colors.deepOrange,),
              title: Text('Courses'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback,color: Colors.deepOrange,),
              title: Text('Feedback'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share,color: Colors.deepOrange,),
              title: Text('Share'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on,color: Colors.deepOrange,),
              title: Text('Donate'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Welcome from PTH LAB"),
        actions: <Widget>[ 
          new IconButton( 
            icon: new Icon(Icons.search,color: Colors.white),
            tooltip: 'Search', 
            onPressed: () {
              return showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    content: Text("တည်ဆောက်နေဆဲ"),
                  );
                }
              );
            },
          ),
        ], 
      ),
      body: Container(
        child: new SingleChildScrollView(
          child: ConstrainedBox(
            constraints: new BoxConstraints(),
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new SizedBox(
                    height: 200.0,
                    child: new Carousel(
                      images: [
                        new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                        new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                        new ExactAssetImage("assets/images/LaunchImage.jpg")
                      ],
                      showIndicator: false,
                      borderRadius: false,
                      moveIndicatorFromBottom: 180.0,
                      noRadiusForIndicator: true,
                    )
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.all(20),
                  child: new ConstrainedBox(
                    constraints: new BoxConstraints(),
                    child: new Container(
                      child: Row(
                        children: <Widget>[
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  Text('data')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  Text('data')
                                ],
                              )
                            ),
                          ),
                        ],
                      )
                    ),
                  )
                ),
                Padding(
                  padding: new EdgeInsets.all(20),
                  child: new ConstrainedBox(
                    constraints: new BoxConstraints(),
                    child: new Container(
                      child: Row(
                        children: <Widget>[
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  Text('data')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  Text('data')
                                ],
                              )
                            ),
                          ),
                        ],
                      )
                    ),
                  )
                ),
                Padding(
                  padding: new EdgeInsets.all(20),
                  child: new ConstrainedBox(
                    constraints: new BoxConstraints(),
                    child: new Container(
                      child: Row(
                        children: <Widget>[
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  Text('data')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  Text('data')
                                ],
                              )
                            ),
                          ),
                        ],
                      )
                    ),
                  )
                ),
                Padding(
                  padding: new EdgeInsets.all(20),
                  child: new ConstrainedBox(
                    constraints: new BoxConstraints(),
                    child: new Container(
                      child: Row(
                        children: <Widget>[
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  Text('data')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  Text('data')
                                ],
                              )
                            ),
                          ),
                        ],
                      )
                    ),
                  )
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}


