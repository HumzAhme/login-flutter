import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationScreen2 extends StatefulWidget {
  const AnimationScreen2({super.key});

  @override
  State<AnimationScreen2> createState() => _AnimationScreenState2();
}

class _AnimationScreenState2 extends State<AnimationScreen2>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController2;
  @override
  void initState() {
    super.initState();
    animationController2 = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/lottieF/loginedSuc.json",
            controller: animationController2,
            repeat: true, onLoaded: (composite) {
          animationController2.duration = composite.duration;
          animationController2.repeat();
        }),
      ),
    );
  }
}
