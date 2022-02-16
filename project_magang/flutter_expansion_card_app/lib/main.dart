import 'dart:ui';

import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

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
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                color: Colors.deepOrange[50],
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ExpandablePanel(
                    header: const Text(
                      'Tantangan : Nonton Video \nHadiah       : 10 Point',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    collapsed: const Text(
                      'Selengkapnya',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: const Text(
                      'Lengkapi data diri kamu pada menu profil, dan klik Selesaikan Tantangan. \n\nJika profil kamu telah lengkap kamu akan mendapatkan tambahan point pertama mu',
                      softWrap: true,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('1'),
                    Text('2'),
                    Text('3'),
                    Text('4'),
                    Text('5'),
                    Text('6'),
                    Text('7'),
                    Text('8')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
