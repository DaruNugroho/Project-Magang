import 'dart:ui';

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
    final String titleBar = 'My Profil';
    final String judul = "Politeknik Negeri Bengkalis";
    final String lokasi = "Bengkalis, Riau";
    final String deskripsi =
        """Seorang mahasiswa yang kini sedang menjalani program magang di CV Quantums Solutions selama 4 bulan kedepan. disini saya sedang berlajar pemrograman mobile dengan menggunakan framework Flutter. """;

    return Scaffold(
        appBar: AppBar(
          title: Text(titleBar),
        ),
        body: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/me.jpg',
                height: 300.0,
                width: 200.0,
                fit: BoxFit.fill,
              ),
              Container(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 10.0,
                    height: 10.0,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          judul,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          lokasi,
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 10.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            deskripsi,
                            style: TextStyle(fontSize: 14.0),
                            softWrap: true,
                            textAlign: TextAlign.justify,
                          ),
                        )
                      ])
                ],
              )
            ],
          ),
        ));
  }
}
