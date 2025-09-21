import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/features/authentication/controllers/onBoarding.Controller.dart';
import 'package:flutter_ecom_project/utils/constants/colors.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      top: TSizes.xl,
      right: TSizes.spaceBtwItems,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text('Skip', style: TextStyle(fontSize: TSizes.md,color: dark?TColors.light:TColors.dark)),
      ),
    );
  }
}