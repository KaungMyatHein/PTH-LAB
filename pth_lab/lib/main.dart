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
      home: LoginPage(title: 'PTH LAB မှကြိုဆိုပါတယ်'),
    );
  }
}

//This class is responsible for showing the Home Page
class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

//This class is responsible for showing the Home Page
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
              padding: new EdgeInsets.fromLTRB(70, 0, 70, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "အသုံးပြုသူအမည်"
                ),
              )
            ),
            Padding(
              padding: new EdgeInsets.fromLTRB(70, 0, 70, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "စကားဝှက်"
                ),
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

//This class is responsible for showing the Home Page
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
              title: Text('အိမ်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.code,color: Colors.deepOrange,),
              title: Text('သင်ရိုးများကြည့်မည်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback,color: Colors.deepOrange,),
              title: Text('အကြံပြုလွှာပေးမည်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share,color: Colors.deepOrange,),
              title: Text('ဝေမျှမည်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on,color: Colors.deepOrange,),
              title: Text('လှူဒါန်းမည်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("PTH LAB မှကြိုဆိုပါတယ်"),
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
                                  //Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => CourseDetail()),
                                      );
                                    },
                                  ),
                                  Text('ဂစ်')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဖလက်တာ')
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
                                  //Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဂစ်')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဖလက်တာ')
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
                                  //Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဂစ်')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဖလက်တာ')
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
                                  //Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဂစ်')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဖလက်တာ')
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
                                  //Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဂစ်')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဖလက်တာ')
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
                                  //Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',height: 70,),
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဂစ်')
                                ],
                              )
                            ),
                          ),
                          new SizedBox(
                            width: MediaQuery.of(context).size.width/2-20,
                            child: Center(
                              child: new Column(
                                children: <Widget>[
                                  IconButton(
                                    iconSize: 100,
                                    icon: Image.network('https://www.empowervate.org/wp-content/uploads/2015/11/circle-300x300.jpg',),
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
                                  Text('ဖလက်တာ')
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

//This class is responsible for showing the course detail information
class CourseDetail extends StatelessWidget
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
              title: Text('အိမ်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.code,color: Colors.deepOrange,),
              title: Text('သင်ရိုးများကြည့်မည်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback,color: Colors.deepOrange,),
              title: Text('အကြံပြုလွှာပေးမည်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share,color: Colors.deepOrange,),
              title: Text('ဝေမျှမည်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on,color: Colors.deepOrange,),
              title: Text('လှူဒါန်းမည်'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("PTH LAB မှကြိုဆိုပါတယ်"),
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
        child: Text('data'),
      ),
    );
  }
}




