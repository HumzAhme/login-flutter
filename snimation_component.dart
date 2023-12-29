import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationComponent extends StatefulWidget {
  const AnimationComponent({super.key});

  @override
  State<AnimationComponent> createState() => _AnimationComponentState();
}

class _AnimationComponentState extends State<AnimationComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset("assets/lottie-signin.json",
        height: 450,
        width: 450,
        fit: BoxFit.cover,
        controller: animationController,
        repeat: true, onLoaded: (composite) {
      animationController.duration = composite.duration;
      animationController.repeat();
    });
  }
}
