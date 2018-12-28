import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:pth_lab/Views/CourseDetails.dart';
import 'package:pth_lab/Views/HomePage.dart';
import 'package:pth_lab/Views/Dontate.dart';
import 'package:pth_lab/Views/Feedbacks.dart';

//This class is responsible for showing the course detail information
class CourseLists extends StatelessWidget
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
          child: LessonLists(),
      ),
    );
  }
}
class LessonLists extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LessonListsState();
  }
}
class LessonListsState extends State<LessonLists> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        // If you've reached at the end of the available word pairs...
        if (index >= _suggestions.length) {
          // ...then generate 10 more and add them to the suggestions list.
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index],index);
      },
    );
  }

  Widget _buildRow(WordPair pair,int index) {
    return new ListTile(
      title: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(pair.asPascalCase, style: _biggerFont),
          Text("3:30 min", style: TextStyle(fontSize: 10),),
        ],
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CourseDetail(index)),
      )
    );
  }
}
    
   

