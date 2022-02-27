import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trading/presentation/res/app_color.dart';
import 'package:trading/presentation/res/app_dimen.dart';
import 'package:trading/presentation/res/app_media.dart';
import 'package:trading/presentation/res/app_media.dart';
import 'package:trading/presentation/res/app_media.dart';
import 'package:trading/presentation/res/app_media.dart';
import 'package:trading/presentation/res/app_strings.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  List<SliderObject> _getSliderData() => [
    SliderObject(AppStrings.onBoardingSubTitle1,
        AppStrings.onBoardingSubTitle1, AppMedia.onboardingLogo1),
    SliderObject(AppStrings.onBoardingSubTitle2,
        AppStrings.onBoardingSubTitle2, AppMedia.onboardingLogo2),
    SliderObject(AppStrings.onBoardingSubTitle3,
        AppStrings.onBoardingSubTitle3, AppMedia.onboardingLogo3),
    SliderObject(AppStrings.onBoardingSubTitle4,
        AppStrings.onBoardingSubTitle4, AppMedia.onboardingLogo4)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: AppSize.s1_5,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            // return OnBoardingPage
            return  OnBoardingPage(_list[index]);
          }),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;

  const OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.s40),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const SizedBox(
          height: AppSize.s60,
        )
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}