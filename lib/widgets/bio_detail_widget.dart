import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
          
            children: <Widget>[
              
              new Expanded(
                flex:0,
                child: new Container(
                  padding: new EdgeInsets.all(10.0), 
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                            new Expanded(
                              child: new Image.asset('images/bio_pic_1.png'),
                            ),

                           new Expanded(
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[

                                      new Text('Name: John Doe', style: new TextStyle(color: Color.fromRGBO(138, 87, 42, 100.00))),
                                      new Text('Age: 34', style: new TextStyle(color: Color.fromRGBO(138, 87, 42, 100.00))),


                                ],
                              )
                            ),

                    ],
                  ),
                )

              ),
              
               new Expanded(
                  child: new Container(
                    padding: new EdgeInsets.all(10.0),  
                    child: new Text('Bio: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ille, ut dixi, vitiose. Eadem nunc mea adversum te oratio est. Nihil minus, contraque illa hereditate dives ob eamque rem laetus. Duo Reges: constructio interrete.',
                    style: new TextStyle(color: Color.fromRGBO(138, 87, 42, 100.00))),
                  )
               ),
              
            ],
          )
    );
  }
}
