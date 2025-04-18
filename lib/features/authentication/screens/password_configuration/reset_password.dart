import 'package:app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_strings.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
         padding:  EdgeInsets.all(TSizes.defaultSpace),
         child: Column(
          children: [

            //image

            //title

            //subtitle
          ],
        ),
      ),
      )
    );
  }
}
