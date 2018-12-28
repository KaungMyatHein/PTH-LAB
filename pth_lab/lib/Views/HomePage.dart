import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pth_lab/Views/CourseLists.dart';
import 'package:pth_lab/Views/Feedbacks.dart';
import 'package:pth_lab/Views/Dontate.dart';

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseLists()));
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback,color: Colors.deepOrange,),
              title: Text('အကြံပြုလွှာပေးမည်'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Feedbacks()));
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Donate()));
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
                      noRadiusForIndicator: false,
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
                                        MaterialPageRoute(builder: (context) => CourseLists()),
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
