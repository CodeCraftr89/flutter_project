import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/features/authentication/screens/password_configurations/forget_password.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../signup/signupScreen.dart';

class TLoginFrom extends StatelessWidget {
  const TLoginFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems),
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.email),),
            SizedBox(height: TSizes.spaceBtwInputFields,),
            TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.password,suffixIcon: Icon(Iconsax.eye_slash)),),
            SizedBox(height: TSizes.spaceBtwInputFields,),
            // Remember me And Forget Password
            Row(
              children: [
                Checkbox(value: true, onChanged: (value){}),
                Text(TTexts.rememberMe,style: Theme.of(context).textTheme.bodyMedium,),
                Spacer(),

                TextButton(
                  onPressed: () => Get.to(() => ForgetPassword()),
                  child: Text(TTexts.forgetPassword),
                ),
              ],



            ),
            SizedBox(height: TSizes.spaceBtwSections,),
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(() =>NavigationMenu()), child: Text(TTexts.signIn)),),
            SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              height: TSizes.buttonSize,
              child: OutlinedButton(
                onPressed: () => Get.to(SignUpScreen()),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: dark ? TColors.white : TColors.dark, // ✅ Border color based on theme
                    width: 0.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // optional: rounded corners
                  ),
                ),
                child: Text(
                  TTexts.createAccount,
                  style: TextStyle(
                    color: dark?TColors.white:TColors.dark,
                  ), // 🔴 Set text color to red
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
