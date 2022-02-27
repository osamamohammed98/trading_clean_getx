import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trading/presentation/res/app_color.dart';
import 'package:trading/presentation/res/app_media.dart';
import 'package:trading/presentation/res/app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  //this for logo
  Widget get splashLogo => const Center(
    child: Image(
      image: AssetImage(AppMedia.splashLogo),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body:splashLogo,
    );
  }

  _startDelay() {
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

}
