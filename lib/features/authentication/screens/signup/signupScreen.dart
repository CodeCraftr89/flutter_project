import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/features/authentication/screens/signup/widgets/signupForm.dart';
import 'package:flutter_ecom_project/utils/constants/sizes.dart';
import 'package:flutter_ecom_project/utils/constants/text_strings.dart';

import '../../../../common/widgets/login_signup/from_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: TSizes.spaceBtwItems),

              //From
              TSignupFrom(),
              SizedBox(height: TSizes.spaceBtwInputFields),

              // Divider
              TFromDivider(dark: dark, dividerText: TTexts.orSignUpWith),
              SizedBox(height: TSizes.spaceBtwItems),

              // footer
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
