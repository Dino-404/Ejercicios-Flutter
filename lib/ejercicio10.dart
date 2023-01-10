// ignore_for_file: prefer_const_constructors, file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';
import 'NavDrawer.dart';

class TouchZoom extends StatefulWidget {
  const TouchZoom({super.key});

  @override
  State<TouchZoom> createState() => _TouchZoomState();
}

class _TouchZoomState extends State<TouchZoom> with TickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;
  late AnimationController _animationController2;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 1.0, end: 3.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      });
    _animationController2 = AnimationController(
        duration: const Duration(milliseconds: 700), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _animationController2.forward();
          _animationController2
              .forward()
              .whenComplete(() => _animationController2.reverse());
        },
        onDoubleTap: () {
          if (_animationController.isCompleted) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
        },
        child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.diagonal3(
              Vector3(_animation.value, _animation.value, _animation.value)),
          child: ScaleTransition(
            scale: Tween(begin: 0.75, end: 2.0).animate(CurvedAnimation(
                parent: _animationController2, curve: Curves.elasticInOut)),
            child: const FlutterLogo(size: 100),
          ),
        ));
  }
}

class TenthRoute extends StatelessWidget {
  const TenthRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("Tenth Route"),
        ),
        //  Container personalizado
        body: Align(alignment: Alignment.topCenter, child: TouchZoom()));
  }
}
