import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: AlertDialog(
                  title: new Text("Pay To"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: Colors.amberAccent, //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 1, //width of the border
                    ),
                  ),
                  content: Column(
                    children: [
                      Icon(Icons.account_box),
                      Text("Elvis Sharewell\n(Payee)"),
                      Text("An Amount of \n Rs1000"),
                      Text("Mode of Payment"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            onPressed: () => {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: BorderSide(
                                color: Colors.amberAccent, //Color of the border
                                style: BorderStyle.solid, //Style of the border
                                width: 1, //width of the border
                              ),
                            ),
                            child: Text("Apple Pay"),
                          ),
                          FlatButton(
                            onPressed: () => {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: BorderSide(
                                color: Colors.amberAccent, //Color of the border
                                style: BorderStyle.solid, //Style of the border
                                width: 1, //width of the border
                              ),
                            ),
                            child: Text("Venemo"),
                          ),
                          FlatButton(
                            onPressed: () => {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: BorderSide(
                                color: Colors.amberAccent, //Color of the border
                                style: BorderStyle.solid, //Style of the border
                                width: 1, //width of the border
                              ),
                            ),
                            child: Text("Gpay"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text("Cancel"),
                      onPressed: () => {},
                    ),
                    new FlatButton(
                      child: new Text("Confirm"),
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
