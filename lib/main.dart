import 'package:flutter/material.dart';
import 'SecondRoute.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Column(
        children: [
          Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=6',
              width: 30,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return SecondRoute();
              }));
            },
            child: Text('Go to another route'),
          ),
        ],
      )),
    );
  }
}
