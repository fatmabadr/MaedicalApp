import 'package:flutter/material.dart';
import 'package:medical_app1/presentation/start_up_view.dart';
import '../login/login_view.dart';
import '../onBoarding/onBoarding_view.dart';
import '../user/profile_view.dart';

class Routes{
  static const String startUPRoute="start_up";
  static const String onBoardingRoute="onBoarding/onBoarding_view";
  static const String loginRoute="login/login_view";
  static const String profileViewRoute="user/profile_view";


}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings setting){
    switch (setting.name){
      case Routes.startUPRoute:return MaterialPageRoute(builder: (_)=> const StartUpView());
      case Routes.onBoardingRoute:return MaterialPageRoute(builder: (_)=>const OnboardingView());
      case Routes.loginRoute:return MaterialPageRoute(builder: (_)=>const LoginView());
      case Routes.profileViewRoute:return MaterialPageRoute(builder: (_)=>const ProfileView());

      default:return undefinedRoute();
    }

  }
  static Route<dynamic> undefinedRoute(){
    return MaterialPageRoute(builder: (_) =>
        Scaffold(appBar:AppBar(title: const Text("No Route Found"),),
          body: const Center(child: Text("No Route Found"),),));
  }
}