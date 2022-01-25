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
  int bil = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Halaman Beranda'),
        ),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Nilai Bil : $bil',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('<<'),
                      onPressed: decrementBil,
                      color: Colors.green,
                    ),
                    Container(
                      width: 10.0,
                    ),
                    RaisedButton(
                      child: Text('>>'),
                      onPressed: incrementBil,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  void incrementBil() {
    setState(() {
      if (bil < 10) {
        bil++;
      } else {
        var flag = true;
        limit(context, flag);
      }
    });
  }

  void decrementBil() {
    setState(() {
      if (bil > 0) {
        bil--;
      } else {
        var flag = false;
        limit(context, flag);
      }
    });
  }

  void limit(BuildContext context, bool flag) {
    var alertDialogIncrement = AlertDialog(
      title: Text(
        'Danger !',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
        textAlign: TextAlign.center,
      ),
      content: Text(
        'Bahaya Melewati Batas Maksimum Jangan Diteruskan',
        textAlign: TextAlign.center,
      ),
    );

    var alertDialogDecrement = AlertDialog(
      title: Text(
        'Danger !',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
        textAlign: TextAlign.center,
      ),
      content: Text(
        'Bahaya Melewati Batas Minimum Jangan Diteruskan',
        textAlign: TextAlign.center,
      ),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          if (flag) {
            return alertDialogIncrement;
          }
          return alertDialogDecrement;
        });
  }
}
