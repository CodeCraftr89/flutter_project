import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/features/authentication/screens/password_configurations/reset_password.dart';
import 'package:flutter_ecom_project/utils/constants/sizes.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height: TSizes.spaceBtwSections*2),

            //Text Field

            TextFormField(
              decoration: InputDecoration(labelText: TTexts.email,prefixIcon: Icon(Icons.email)),),
            //Submit Button

            SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => ResetPassword()),
                    child: Text(TTexts.submit))),
          ],
        ),
      ),

    );
  }
}
