import 'package:flutter/material.dart';
import 'package:flutter_ecom_project/utils/theme/theme.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      home: const OnBoardingScreen(),

    );
  }
}
