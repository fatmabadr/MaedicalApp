import 'package:flutter/material.dart';
import 'package:medical_app1/presentation/profile_screen.dart';
import 'package:medical_app1/presentation/start_up_view.dart';
import '../Users/DoctorScreen/doctor_screen.dart';
import '../Users/MangerScreen/manger_screen.dart';
import '../Users/NurseScreen/nurse_screen.dart';
import '../Users/profile_view.dart';
import '../login/login_view.dart';
import '../notification_screen.dart';
import '../onBoarding_view.dart';

class Routes {
  static const String startUPRoute = "start_up";
  static const String onBoardingRoute = "onBoarding/onBoarding_view";
  static const String loginRoute = "login/login_view";
  static const String profileViewRoute = "user/profile_view";
  static const String doctorScreenRoute = "doctor_screen";
  static const String reseptionistScreenRoute = "user/profile_view";
  static const String nurseScreenRoute = "nurse_screen";
  static const String analysisScreenRoute = "user/profile_view";
  static const String mangerScreenRoute = "manger_screen";
  static const String hrScreenRoute = "user/profile_view";
  static const String notificationRoute = "notification_screen";
  static const String profileRoute = "profile_screen";



}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.startUPRoute:return MaterialPageRoute(builder: (_) => const StartUpView());
      case Routes.onBoardingRoute:return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.loginRoute:return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.profileViewRoute:return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.doctorScreenRoute:return MaterialPageRoute(builder: (_) =>  const DoctorScreen());
      case Routes.nurseScreenRoute:return MaterialPageRoute(builder: (_) =>  const NurseScreen());
      case Routes.mangerScreenRoute:return MaterialPageRoute(builder: (_) =>   Mangerscreen());
      case Routes.notificationRoute:return MaterialPageRoute(builder: (_) =>   NotificationScreen());
      case Routes.profileRoute:return MaterialPageRoute(builder: (_) =>   ProfileScreen());

      default:return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Route Found"),
              ),
              body: const Center(
                child: Text("No Route Found"),
              ),
            ));
  }
}
