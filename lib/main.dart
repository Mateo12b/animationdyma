import 'package:animationdyma/example_animation_widget.dart';
import 'package:flutter/material.dart';

import 'main_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Animation !'),
          ),
          body: ExampleAnimationWidget(),
          //body: MainWidget(),
        ),
    );
  }
}