import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/features/authentication/screens/login/loginScreen.dart';
import 'package:flutter_ecom_project/utils/constants/sizes.dart';
import 'package:flutter_ecom_project/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          ///Image
          Image(image:  AssetImage(TImages.emailDeliver),width: THelperFunctions.screenWidth()*0.8,),

          ///Title & Subtitle
          Text(TTexts.changeYourPasswordTitle, textAlign: TextAlign.center, style:
          TextStyle(fontSize: 22 ,fontWeight: FontWeight.bold,color:dark?TColors.white:TColors.dark ),),
          SizedBox(height: TSizes.spaceBtwItems,),
          Text(TTexts.changeYourPasswordSubTitle, textAlign: TextAlign.center, style:Theme.of(context).textTheme.labelMedium),
          SizedBox(height: TSizes.spaceBtwItems,),

          ///Button
          SizedBox(width: double.infinity,
            child: ElevatedButton(
              onPressed: () =>Get.off(()=> LoginScreen()),
               child: Text(TTexts.done),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwItems,),
          SizedBox(width: double.infinity,
            child: TextButton(
              onPressed: (){}, child: Text(TTexts.resendEmail),
            ),
          ),

        ]),
      ),
    );
  }
}
