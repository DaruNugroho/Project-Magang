import 'package:flutter/material.dart';
import 'package:flutter_provider_app/SecondRoute.dart';

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
          Container(
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Nama: ',
                            hintStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                            ),
                            icon: Icon(Icons.person),
                            border: OutlineInputBorder()),
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'No Hp: ',
                            hintStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                            ),
                            icon: Icon(Icons.person),
                            border: OutlineInputBorder()),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextButton(
                          child: const Text('Simpan'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondRoute()),
                            );
                          })
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
