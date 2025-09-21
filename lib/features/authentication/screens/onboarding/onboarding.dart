import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/features/authentication/screens/onboarding/widgets/OnBoardingNextButton.dart';
import 'package:flutter_ecom_project/features/authentication/screens/onboarding/widgets/onBoardingSwipePage.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onBoarding.Controller.dart';
import 'widgets/OnBoardingDotNavigation.dart';
import 'widgets/OnBoardingSkip.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable page view
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // skip button
          OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          // circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
