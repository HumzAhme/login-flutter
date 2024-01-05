import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationComponent2 extends StatefulWidget {
  const AnimationComponent2({super.key});

  @override
  State<AnimationComponent2> createState() => _AnimationComponentState2();
}

class _AnimationComponentState2 extends State<AnimationComponent2>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController2;
  @override
  void initState() {
    super.initState();
    animationController2 = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset("assets/lottieF/loginedSuc.json",
        height: 180,
        width: 180,
        fit: BoxFit.cover,
        controller: animationController2,
        repeat: true, onLoaded: (composite) {
      animationController2.duration = composite.duration;
      animationController2.repeat();
    });
  }
}
