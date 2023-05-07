import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Scaffold(
          body: Center(
            child: Text(
               'test',
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          child: Image.asset(
            'assets/images/Artwork.png',
            fit: BoxFit.cover,
            color: Colors.amber,
            colorBlendMode: BlendMode.modulate,
          ),
        ),
      ],
    );
  }
}
