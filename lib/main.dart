import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Make It Rain',
      theme: new ThemeData(

        primarySwatch: Colors.deepOrange,
        accentColor: Colors.lightGreen,
      ),
      home: MyHomePage(
        title: 'Make it Rain Money',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void  _resetCounter(){
    setState(() {

      _counter =0;
    });
  }
  void _incrementCounter() {
    setState(() {

      _counter += 50;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(25.5)),
            new Text(
              'Get Rich Sama',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
            ),
            Padding(padding: EdgeInsets.all(35.5)),
            new Text(
              ' \$$_counter',
              style: Theme.of(context).textTheme.display2,
            ),
            Padding(padding: EdgeInsets.all(35.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.5),
                  child:RaisedButton(
                      child: Text("Let It Rain"),
                      padding: EdgeInsets.all(15.5),
                      color: Theme.of(context).primaryColor,
                      elevation: 26.5,
                      splashColor: Theme.of(context).accentColor,
                      onPressed: _incrementCounter),
                ),
                Container(
                  margin: EdgeInsets.all(5.5),
                  child: RaisedButton(
                      child: Text("Reset"),

                      padding: EdgeInsets.all(15.5),

                      color: Theme.of(context).primaryColor,
                      elevation: 26.5,
                      splashColor: Theme.of(context).accentColor,

                      onPressed: _resetCounter),
                ),


              ],
            ),

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}