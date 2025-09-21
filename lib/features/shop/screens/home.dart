import 'package:flutter/material.dart';
import '../../../common/widgets/custome_shape/container/primery_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimeryHeaderContainer(
                child: Container()
            ),
          ],
        ),
      ),
    );
  }
}




