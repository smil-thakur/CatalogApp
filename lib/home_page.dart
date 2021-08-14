import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Smil";
    int day = 2;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
            child: Text(
                "hello i am $name and this is day $day of flutter project")),
      ),
      drawer: Drawer(),
    );
  }
}
