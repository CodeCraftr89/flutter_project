import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/loginScreen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, this.onPressed});

  final String image,title,subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [IconButton(onPressed: () => Get.off(() => LoginScreen()), icon: Icon(CupertinoIcons.clear))],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Center(
              child: Column(
                children: [
                  ///Image
                  Image(image:  AssetImage(image),width: THelperFunctions.screenWidth()*0.8,),

                  ///Title & Subtitle
                  Text(title, textAlign: TextAlign.center, style:
                  TextStyle(fontSize: 22 ,fontWeight: FontWeight.bold,color:dark?TColors.white:TColors.dark ),),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  Text(subTitle, textAlign: TextAlign.center, style:Theme.of(context).textTheme.labelMedium),
                  SizedBox(height: TSizes.spaceBtwItems,),

                  ///Button
                  SizedBox(width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onPressed, child: Text(TTexts.aContinue),
                    ),
                  ),


                ],
              ),
            ),
          ),
        )
    );
  }
}
