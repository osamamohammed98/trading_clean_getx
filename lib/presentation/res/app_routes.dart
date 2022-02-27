import 'package:flutter/material.dart';
import 'package:trading/presentation/forget_password/forget_password_view.dart';
import 'package:trading/presentation/login/login_view.dart';
import 'package:trading/presentation/main/main_view.dart';
import 'package:trading/presentation/onboarding/onboarding_view.dart';
import 'package:trading/presentation/register/register_view.dart';
import 'package:trading/presentation/splash/splash_view.dart';
import 'package:trading/presentation/store_details/store_details_view.dart';

import 'app_strings.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) =>const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) =>const OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) =>const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) =>const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) =>const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) =>const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title:const Text(AppStrings.noRouteFound),
          ),
          body:const Center(child: Text(AppStrings.noRouteFound)),
        ));
  }
}