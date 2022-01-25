import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Halaman Beranda'),
        ),
        body: Center(
          child: HelloButton(),
        ));
  }
}

class HelloButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Hello'),
      onPressed: () {
        action(context);
      },
    );
  }
}

void action(BuildContext buildContext) {
  var alertDialog = AlertDialog(
    title: Text('Event Handling'),
    content: Text('Selamat Ngoding flutter :)'),
  );

  showDialog(
      context: buildContext,
      builder: (BuildContext context) {
        return alertDialog;
      });
}