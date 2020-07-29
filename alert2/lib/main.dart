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
                  title: Text("Settle For"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    side: BorderSide(
                      color: Colors.amberAccent, //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 1, //width of the border
                    ),
                  ),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.account_box),
                          Text("Arkel Charles\n(Payee)"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("an amount of"),
                          Container(
                            height: 50,
                            width: 65,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Rs",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("I recieved payment by"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: BorderSide(
                                color: Colors.amberAccent, //Color of the border
                                style: BorderStyle.solid, //Style of the border
                                width: 1, //width of the border
                              ),
                            ),
                            onPressed: () => {},
                            child: Text("cash"),
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 16.0,
                            ),
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                              side: BorderSide(
                                color: Colors.amberAccent, //Color of the border
                                style: BorderStyle.solid, //Style of the border
                                width: 1, //width of the border
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 16.0,
                            ),
                            onPressed: () => {},
                            child: Text("others"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text("Cancel"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    new FlatButton(
                      child: new Text("Confirm"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
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
