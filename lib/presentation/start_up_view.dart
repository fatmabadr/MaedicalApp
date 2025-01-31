import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app1/presentation/resources/color_manger.dart';
import 'package:medical_app1/presentation/resources/route_manager.dart';

import 'background.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({super.key});

  static String type = '';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: Background(
      child: Stack(children: [
        Positioned(
          top: 350,
          left: 130,
          child: Text(
            "Prototype Map",
            style: TextStyle(color: ColorManger.primaryGreen, fontSize: 24),
          ),
        ),
        Positioned(
          top: 410,
          left: 55,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  type = "Doctor";
                  Navigator.pushNamed(context, Routes.onBoardingRoute);
                },
                child: ButtonType("Doctor", 83),
              ),
              SizedBox(
                width: 13,
              ),
              InkWell(
                onTap: () {
                  type = "Receptionist";
                  Navigator.pushNamed(context, Routes.onBoardingRoute);
                },
                child: ButtonType("Receptionist", 152),
              ),
              SizedBox(
                width: 13,
              ),
              InkWell(
                onTap: () {
                  type = "Nurse";
                  Navigator.pushNamed(context, Routes.onBoardingRoute);
                },
                child: ButtonType("Nurse", 83),
              ),
            ],
          ),
        ),
        Positioned(
          top: 470,
          left: 55,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  type = "AnalysisEmployee";
                  Navigator.pushNamed(context, Routes.onBoardingRoute);
                },
                child: ButtonType("Analysis Employee", 170),
              ),
              SizedBox(
                width: 13,
              ),
              InkWell(
                onTap: () {
                  type = "Manger";
                  Navigator.pushNamed(context, Routes.onBoardingRoute);
                },
                child: ButtonType("Manger", 100),
              ),
              SizedBox(
                width: 13,
              ),
              InkWell(
                onTap: () {
                  type = "HR";
                  Navigator.pushNamed(context, Routes.onBoardingRoute);
                },
                child: ButtonType("HR", 50),
              ),
            ],
          ),
        ),
      ]),
    ));
  }

  ButtonType(String Typee, double width) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: ColorManger.grey, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(
            10,
          )),
      width: width,
      height: 50,
      alignment: Alignment.center,
      child: Text(
        Typee,
        style: TextStyle(color: ColorManger.primaryGreen),
      ),
    );
  }
}
