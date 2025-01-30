import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app1/presentation/background.dart';
import 'package:medical_app1/presentation/resources/color_manger.dart';
import 'package:medical_app1/presentation/start_up.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../resources/route_manager.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 5), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
    //  _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
            child: Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height / 4,
          left: MediaQuery.of(context).size.width / 3 ,
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height /4.5,
          child: Image.asset("assets/Background_logo.png"),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height/1.4,
            left: MediaQuery.of(context).size.width/14,
            child: Column(
              children: [
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 60,
                  lineHeight: 5.0,
                  percent: 1,
                  animation: true,
                  animationDuration: 5000,
                  backgroundColor: ColorManger.grey,
                  progressColor: ColorManger.primaryGreen,
                  barRadius: Radius.circular(5),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Loading...",
                  style: TextStyle(
                      color: ColorManger.primaryGreen,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                )
              ],
            )),
      ],
    )));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer!.cancel();
    super.dispose();
  }
}
