import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanPertama(),
    routes: <String, WidgetBuilder>{
      'HalamanPertama': (BuildContext context) => new HalamanPertama(),
      'HalamanKedua': (BuildContext context) => new HalamanKedua(),
    },
  ));
}

//Membuat Halaman Crad
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Portal Menu Akses Route"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: new IconButton(
          icon: new Icon(
            Icons.computer,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'HalamanKedua');
          },
        ),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WINDOWS"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: new IconButton(
          icon: new Icon(
            Icons.window,
            size: 50.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'HalamanPertama');
          },
        ),
      ),
    );
  }
}