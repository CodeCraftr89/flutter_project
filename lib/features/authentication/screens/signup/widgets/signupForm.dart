import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../verify_email.dart';

class TSignupFrom extends StatelessWidget {
  const TSignupFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(child: TextFormField(decoration: InputDecoration(labelText: TTexts.firstName,prefixIcon: Icon(Iconsax.user)),)),
            SizedBox(width: TSizes.spaceBtwInputFields,),
            Expanded(child: TextFormField(decoration: InputDecoration(labelText: TTexts.lastName,prefixIcon: Icon(Iconsax.user)),)),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwInputFields,),
        //username
        TextFormField(decoration: InputDecoration(labelText: TTexts.userName,prefixIcon: Icon(Iconsax.user)),),
        SizedBox(height: TSizes.spaceBtwInputFields,),

        //email
        TextFormField(decoration: InputDecoration(labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct)),),
        SizedBox(height: TSizes.spaceBtwInputFields,),

        //phone number
        TextFormField(decoration: InputDecoration(labelText: TTexts.phoneNo,prefixIcon: Icon(Iconsax.call)),),
        SizedBox(height: TSizes.spaceBtwInputFields,),


        TextFormField(decoration: InputDecoration(labelText: TTexts.password,suffixIcon: Icon(Iconsax.eye_slash),prefixIcon: Icon(Iconsax.password_check)),),
        SizedBox(height: TSizes.spaceBtwInputFields,),

        Row(
          children: [
            SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text.rich(TextSpan(children: [
              TextSpan(text: TTexts.iAgreeTo,style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: ' ${TTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: TColors.primery,
                decoration: TextDecoration.underline,
                decorationColor: TColors.primery,)),
              TextSpan(text: 'and',style: Theme.of(context).textTheme.bodySmall!),
              TextSpan(text: ' ${TTexts.termsOfUse} ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: TColors.primery,
                decoration: TextDecoration.underline,
                decorationColor: TColors.primery,)),
            ]))
          ],
        ),
        SizedBox(height: TSizes.spaceBtwSections,),
        SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(VerifyEmailScreen()), child: Text(TTexts.createAccount),),),

      ],
    ),
    );
  }
}
