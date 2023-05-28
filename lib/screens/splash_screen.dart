import 'dart:async';

import 'package:app/screens/popular.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => const PopularList(),
              ),
            ));
    return Scaffold(
      backgroundColor: const Color(0xff26292B),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: TweenAnimationBuilder(
                duration: const Duration(
                  milliseconds: 500,
                ),
                tween: Tween<double>(
                  begin: 0,
                  end: 150,
                ),
                builder: (BuildContext context, double length, Widget? child) {
                  return Image.asset(
                    'images/Splash.png',
                    height: length,
                  );
                },
                child: Image.asset(
                  'images/Splash.png',
                  height: 150,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: Column(
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    child: Text(
                      'From\nCefora Team',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
