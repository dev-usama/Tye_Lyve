import 'package:flutter/material.dart';

class MyAnimator extends StatefulWidget {
  const MyAnimator(
      {required this.animation_child,
      required this.Begin,
      required this.End,
      super.key});

  final Widget animation_child;
  final Offset Begin;
  final Offset End;

  @override
  State<MyAnimator> createState() => _MyAnimatorState();
}

class _MyAnimatorState extends State<MyAnimator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat();
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: widget.animation_child,
        builder: (context, child) => SlideTransition(
              position: Tween(begin: widget.Begin, end: widget.End).animate(
                  CurvedAnimation(
                      parent: _animationController, curve: Curves.easeInOut)),
              child: child,
            ));
  }
}
