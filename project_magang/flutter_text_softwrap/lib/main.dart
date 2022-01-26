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
  final String deskripsi =
      "Awalnya, Flutter dikenal dengan nama Sky. Flutter pertama kali diperkenalkan pada acara Dart Developer Summit 2015. Pada tanggal 4 Desember 2018, Google merilis Flutter 1.0 di acara Flutter Live Event. Hal ini juga menandai rilisnya versi stabil pertama dari Flutter. Selanjutnya Flutter 1.12 dirilis di acara Flutter Interact yang diadakan pada tanggal 11 Desember 2019. Pada versi ini, versi beta Flutter untuk web juga diperkenalkan ke publik.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Flutter Framework',
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 20.0,
          ),
          Image.asset(
            'images/flutter.jpg',
            height: 150.0,
            width: 150.0,
          ),
          Container(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(10.0),
            child: Text(
              deskripsi,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14.0),
            ),
          )
        ],
      ),
    );
  }
}
