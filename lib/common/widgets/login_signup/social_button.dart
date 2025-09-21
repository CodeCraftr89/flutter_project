import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: TColors.gray),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SizedBox(
                width: TSizes.iconMd, // Set your desired size
                height: TSizes.iconMd,
                child: Image.asset(TImages.google),
              ),
            ),
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.gray),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: SizedBox(
              width: TSizes.iconMd, // Set your desired size
              height: TSizes.iconMd,
              child: Image.asset(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
