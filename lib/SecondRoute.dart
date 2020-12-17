import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Hero(
        tag: 'imageHero',
        child: Center(
          child: Image.network('https://picsum.photos/250?image=6'),
        ),
      ),
    );
  }
}
