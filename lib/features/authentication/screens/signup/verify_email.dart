import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/features/authentication/screens/login/loginScreen.dart';
import 'package:flutter_ecom_project/features/authentication/screens/signup/success_screen.dart';
import 'package:flutter_ecom_project/utils/constants/colors.dart';
import 'package:flutter_ecom_project/utils/constants/image_string.dart';
import 'package:flutter_ecom_project/utils/constants/sizes.dart';
import 'package:flutter_ecom_project/utils/constants/text_strings.dart';
import 'package:flutter_ecom_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () => Get.off(() => LoginScreen()),
                icon: Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Center(
                  child: Column(
                      children: [

                        ///Image
                        Image(image: AssetImage(TImages.emailVerification),
                          width: THelperFunctions.screenWidth() * 0.8,),

                        ///Title & Subtitle
                        Text(TTexts.confirmEmail,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: dark ? TColors.white : TColors.dark),
                        ),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        Text('ashish@gmail.com', textAlign: TextAlign.center,
                            style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        Text(TTexts.confirmEmailSubTitle,
                          textAlign: TextAlign.center,
                          style: Theme
                              .of(context)
                              .textTheme
                              .labelMedium,),
                        SizedBox(height: TSizes.spaceBtwSections,),

                        SizedBox(width: double.infinity,
                          child: ElevatedButton(onPressed: () =>
                              Get.to(SuccessScreen(
                                image: TImages.successScreenImage,
                                title: TTexts.successTitle,
                                subTitle: TTexts.successSubTitle,
                                onPressed: () => Get.to(() => LoginScreen()),
                              ),
                              ), child: Text(TTexts.aContinue),
                          ),
                        ),

                        SizedBox(height: TSizes.spaceBtwItems,),
                        SizedBox(width: double.infinity,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(TTexts.resendEmail, style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium),
                          ),
                        ),
                      ]
                  ),
                )
            )
        )
    );

    ///Button

  }
}
