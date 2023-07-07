import 'package:animationdyma/fade_in.dart';
import 'package:flutter/material.dart';

import 'animated_square.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> _curve;


  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _curve = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60),
      alignment: Alignment.center,
      child: Center(
        //child: AnimatedSquare(
          //animation: _curve,
        //),
        child: FadeIn(
            child: Test(),
            animation: controller,
        ),
      ),
    );
  }
}


class Test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text('123');
  }
}
