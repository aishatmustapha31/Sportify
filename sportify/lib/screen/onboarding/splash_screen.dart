import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sportify/screen/onboarding/dash_board.dart';

import 'package:sportify/screen/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const DashBoard()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xff491919),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('asset/images/Frame 1.png', scale: 2,),
              SizedBox(height: 5,),
              const Text('',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),)


            ],
          ),
        ),
      ),
    );
  }
}
