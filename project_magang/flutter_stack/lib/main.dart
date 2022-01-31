import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(color: Colors.white),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(color: Colors.black12),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(color: Colors.black12),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              Column(
                children: const <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),
                  Text("Ini adalah text yang di lapisan tengah dari stack")
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
