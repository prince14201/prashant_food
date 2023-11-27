import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prashant_food/presentation/resources/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 Timer? _timer;

 _startDelay() {
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }

  _goNext() async {
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
  }
@override
  void initState() {
    super.initState();
     _startDelay();
  }

  @override
  void dispose() {
     _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Placeholder(),
    ));
  }
}