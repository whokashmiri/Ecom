import 'package:app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_Strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back()  , icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
         padding:  EdgeInsets.all(TSizes.defaultSpace),
         child: Column(
          children: [

            Image(
              image: const  AssetImage(TImages.deliveredEmailIllustration), // ✅ Removed const
              width: THelperFunctions.screenWidth() * 0.6, // ✅ Fixed function call
            ),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Title & Subtitle
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSizes.spaceBtwItems),



            const SizedBox(height: TSizes.spaceBtwItems),

            Text(
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSizes.spaceBtwSections),

            /// Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(TTexts.done), // ✅ Removed `const`
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {}, //look for this :)
                child: Text(TTexts.resendEmail), // ✅ Removed `const`
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
