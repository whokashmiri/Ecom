import 'package:app/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:app/features/authentication/screens/onboarding/widgets/onboarding_dot_naviagtion.dart';
import 'package:app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:app/utils/constants/image_Strings.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoarding1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoarding2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoarding3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // SKIP BUTTON
          const OnBoardingSkip(),

          //   DOT NAVIGATION SMOOTH PAGE INDICATOR
          const OnBoardingNavigation(),

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

