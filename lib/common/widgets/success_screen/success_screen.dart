import 'package:app/common/styles/spacing_styles.dart';
import 'package:app/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle,  this.onPressed});

  final String image , title , subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            Image(
              image: AssetImage(image), // ✅ Removed const
              width: THelperFunctions.screenWidth() * 0.6, // ✅ Fixed function call
            ),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Title & Subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSizes.spaceBtwItems),



            const SizedBox(height: TSizes.spaceBtwItems),

            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const LoginScreen()), //look for this :)
                child: Text(TTexts.tContinue), // ✅ Removed `const`
              ),
            ),


          ],
        ),

        ),
      ),

    );
  }
}
