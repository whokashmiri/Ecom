import 'package:app/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/device/device_utility.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
          controller:controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(activeDotColor: dark ? TColors.light : TColors.dark, dotHeight:6)
      ),
    );
  }
}