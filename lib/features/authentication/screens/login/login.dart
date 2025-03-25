import 'package:app/utils/constants/enums.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/image_Strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? TImages.lightAppLogo : TImages.darkAppLogo,
                    ),
                  ), // Image
                  Text(
                    TTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ), // Column
              Form(
                child: Column(
                  children: [
                    //Email
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TTexts.email,
                      ),
                    ),

                    //Password
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash)
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields / 2,),

                    //Remember and Forget Password
                    Row(
                      children: [
                        //remember
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value){}),
                            const Text(TTexts.rememberMe)
                          ],
                        ),



                        //forget

                        TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword),)
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
