import 'package:day3_flutter2/ui_view/page_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: PageHome(),debugShowCheckedModeBanner: false,
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve JSON Flutter'),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          children: <Widget>[

            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageListUser()));
              },
              child: Text('Nested List JSON User'),
              color: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
