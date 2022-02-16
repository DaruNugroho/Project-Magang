import 'package:flutter/material.dart';
import 'package:flutter_provider_app/provider/user_provider.dart';
import 'package:provider/provider.dart';

class SecondRoute extends StatefulWidget {
  final String? nama;
  final String? noTelp;

  const SecondRoute({Key? key, this.nama, this.noTelp}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, user, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Second Route'),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(20.0),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Text('Nama : ${user.nama}'),
                        Text('No. Telp : ${user.noTelp}')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
