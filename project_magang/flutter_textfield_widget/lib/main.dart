// ignore_for_file: unused_local_variable

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
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Masukkan Nama',
                        hintStyle: TextStyle(fontStyle: FontStyle.normal),
                        labelText: 'Nama : ',
                        icon: Icon(Icons.person_pin),
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nim tidak boleh kosong';
                      }
                    },
                  ),
                  Container(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Masukkan NIM',
                      labelText: 'NIM',
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'NIM tidak boleh kosong !';
                      }
                    },
                  ),
                  Container(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Masukkan Semester',
                      labelText: 'Semester',
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.format_list_numbered),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        action(context, value);
                      } else {
                        return 'Semester tidak boleh kosong !';
                      }
                    },
                  ),
                  Container(
                    height: 10.0,
                  ),
                  RaisedButton(
                    child: Text('Simpan'),
                    onPressed: validateInput,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  )
                ],
              ))),
    );
  }

  void action(BuildContext context, String data) {
    var alertDialog = AlertDialog(
      content: Text('Data : $data'),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  void validateInput() {
    FormState? form = formKey.currentState;
    ScaffoldState? scaffold = scaffoldkey.currentState;

    SnackBar message =
        const SnackBar(content: Text('Semua data sudah divalidasi'));

    if (form!.validate()) {
      scaffold?.showSnackBar(message);
    }
  }
}
