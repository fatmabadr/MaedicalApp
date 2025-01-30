import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app1/presentation/background.dart';
import 'package:medical_app1/presentation/resources/Input_text.dart';

import '../resources/color_manger.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
      child: Stack(children: [
        Positioned(
          top: MediaQuery.of(context).size.height / 6,
          left: (MediaQuery.of(context).size.width / 2) - 161 / 2,
          child: Column(
            children: [
              Image.asset(
                "assets/logo.png",
                width: 161,
                height: 191,
              ),
              Text(
                "Welcome back !",
                style: TextStyle(
                  color: ColorManger.primaryGreen,
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text("To Continue , Login Now",
                  style: TextStyle(
                    color: ColorManger.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
            ],
          ),
        ),
        Positioned(
          top: (MediaQuery.of(context).size.height / 6) + 300,
          left: 25,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: InputTextt.inputTextStyleWithoutSuffixIcon(
                    "assets/Group663.svg", "Phone Number"),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: InputTextt.inputTextStyleWithSuffixIcon(
                    "assets/Group337.svg",
                    "Password",
                    Icon(Icons.remove_red_eye_outlined)),
              ),
              SizedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: 250,
                    ),
                    Text(
                      "Forget Password ?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2, // optional
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorManger.primaryGreen),
                  width: MediaQuery.of(context).size.width - 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                  ))
            ],
          ),
        ),
      ]),
    ));
  }
}
