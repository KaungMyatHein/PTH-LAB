import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
          child: Text('data')
        )
      ),
    );
  }
}