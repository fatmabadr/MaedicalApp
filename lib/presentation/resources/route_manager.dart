

import 'package:flutter/material.dart';
import 'package:medical_app1/presentation/background.dart';
import 'package:medical_app1/presentation/resources/splash_view.dart';
import 'package:medical_app1/presentation/resources/string_manager.dart';
import 'package:medical_app1/presentation/start_up.dart';

import '../login/login_view.dart';
import '../onBoarding/onBoarding_view.dart';
import '../user/profile_view.dart';

class Routes{
  static const String splashRoute="/";
  static const String startUPRoute="start_up";
  static const String loginRoute="login/login_view";
  static const String profileViewRoute="user/profile_view";
  static const String mainRoute="main/main_view";
  static const String backGround="background";
  static const String onBoardingRoute="onBoarding/onBoarding_view";


}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings setting){
    switch (setting.name){
      case Routes.splashRoute:return MaterialPageRoute(builder: (_)=>const SplashView());
      case Routes.loginRoute:return MaterialPageRoute(builder: (_)=>const LoginView());
      case Routes.profileViewRoute:return MaterialPageRoute(builder: (_)=>const ProfileView());
      case Routes.startUPRoute:return MaterialPageRoute(builder: (_)=> const StartUp());
       case Routes.backGround:return MaterialPageRoute(builder: (_)=> Background(child: Text("hi")));
      case Routes.onBoardingRoute:return MaterialPageRoute(builder: (_)=>const OnboardingView());

      default:return undefinedRoute();
    }

  }
  static Route<dynamic> undefinedRoute(){
    return MaterialPageRoute(builder: (_) =>
        Scaffold(appBar:AppBar(title: const Text(StringManager.noRouteFound),),
          body: const Center(child: Text(StringManager.noRouteFound),),));
  }
}