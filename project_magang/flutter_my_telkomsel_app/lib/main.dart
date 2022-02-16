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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.red[700],
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            // baris pertama
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // nama dan no hp
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Hi Daru',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '082382157576',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  // pesan dan tanda tanya
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.qr_code,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // baris kedua : InputChip
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Row(
                  children: <Widget>[
                    Transform(
                      transform: Matrix4.identity()..scale(0.9),
                      child: InputChip(
                        avatar: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 16,
                        ),
                        backgroundColor: Colors.red[900],
                        label: const Text(
                          '0 POIN',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Transform(
                      transform: Matrix4.identity()..scale(0.9),
                      child: InputChip(
                        avatar: const Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 16,
                        ),
                        backgroundColor: Colors.red[900],
                        label: const Text(
                          'Daily Checkin',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.6,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Rp. 0',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 24.0),
                          ),
                          const Text(
                            'Akhir hingga 04 juni 2022',
                            style: TextStyle(
                                fontSize: 11.0, fontWeight: FontWeight.w400),
                          ),
                          // tombol beli paket
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Transform(
                                  transform: Matrix4.identity()..scale(0.9),
                                  child: InputChip(
                                    label: const Text(
                                      'Beli Paket',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {},
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                Text(
                                  'Isi Ulang',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Kirim Hadiah',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.w900),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
