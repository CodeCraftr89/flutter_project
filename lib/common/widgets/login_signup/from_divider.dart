import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class TFromDivider extends StatelessWidget {
  const TFromDivider({super.key, required this.dark,  required this.dividerText,});

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark?TColors.dark:TColors.gray,thickness: 1.0,indent: 40,endIndent: 10,)),
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark?TColors.dark:TColors.gray,thickness: 1.0,indent: 10,endIndent: 40,)),
      ],
    );
  }
}
