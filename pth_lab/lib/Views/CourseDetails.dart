import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:pth_lab/Views/HomePage.dart';
import 'package:pth_lab/Views/CourseLists.dart';

class CourseDetail extends StatelessWidget
{
  int courseId;
  CourseDetail (int courseId)
  {
    this.courseId = courseId;
  }
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
      body:new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Chewie(
              new VideoPlayerController.network('http://techslides.com/demos/sample-videos/small.webm'),
              aspectRatio: 16/9,
              autoPlay: true,
              looping: true,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Title" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),
                  Text("Description")
                ],
              ),
            )
          ],
        ),
      )
    );
  }

}