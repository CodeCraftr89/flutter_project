import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/common/styles/spacing_style.dart';
import 'package:flutter_ecom_project/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_ecom_project/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_ecom_project/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/from_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //section 1 for heading
              TLoginHeader(dark: dark),

              // section 2 for form fields
              TLoginFrom(),

              // 3rd section for Divider
              TFromDivider(
                dark: dark,
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              // footer
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

