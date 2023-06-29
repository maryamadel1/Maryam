//import 'package:sqflite/sqflite.dart';
//var databasesPath = await getDatabasesPath();
//String path = join(databasesPath, 'database.db');
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'مُعيــن',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 241, 236),
      appBar: AppBar(
        title: Text('مُعيــن'),
        backgroundColor: Color.fromARGB(255, 130, 235, 116),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageOne()),
                );
              },
              child: Container(
                width: 250,
                height: 70,
                padding: EdgeInsets.all(5),
                color: Color.fromARGB(255, 130, 235, 116),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "مواعيد الادوية  ",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                    Icon(
                      Icons.date_range_rounded,
                      size: 20,
                      color: Colors.yellowAccent,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageTwo()),
                  );
                },
                child: Container(
                  width: 250,
                  height: 70,
                  padding: EdgeInsets.all(5),
                  color: Color.fromARGB(255, 130, 235, 116),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "مواعيد مراجعة الطبيب   ",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                      Icon(
                        Icons.date_range_rounded,
                        size: 20,
                        color: Colors.yellowAccent,
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageThree()),
                  );
                },
                child: Container(
                  width: 250,
                  height: 70,
                  padding: EdgeInsets.all(5),
                  color: Color.fromARGB(255, 130, 235, 116),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "اذكار المساء  ",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                      Icon(
                        Icons.sunny,
                        size: 20,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
         title: Text('Page Two'),
      ),
      body: Center(
        child: Text(
          'This is Page Two',
          style: TextStyle(fontSize: 14),
        ),
      ),
    
    );
  }
}



class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Center(
        child: Text(
          'This is Page Two',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('اذكار المساء'),
        backgroundColor: Color.fromARGB(255, 130, 235, 116),
      ),
      body: Center(
        child: Text(
          '''
          1. اللهم بك أمسينا وبك أصبحنا، وبك نحيا وبك نموت وإليك المصير.
          . اللهم إني أسألك خير هذه الليلة وخير ما بعدها، وأعوذ بك من شر هذه الليلة وشر ما بعدها.
3. سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته.
4. اللهم إني أعوذ بك من الهم والحزن، وأعوذ بك من العجز والكسل، وأعوذ بك من الجبن والبخل، وأعوذ بك من غلبة الدين وقهر الرجال.
5. اللهم إني أسألك العفو والعافية في ديني ودنياي، وأهلي ومالي، اللهم استر عوراتي، وآمن روعاتي، اللهم احفظني من بين يديَّ، ومن خلفي، وعن يميني، وعن شمالي، ومن فوقي، وأعوذ بعظمتك أن أغتال من تحتي.
6. اللهم إني أعوذ بك من الكسل والهم والحزن والعجز والبخل وضلع الدين وغلبة الرجال.
''',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
