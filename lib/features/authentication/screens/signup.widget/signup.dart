import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.signupTitle, // Ensure `TTexts.signupTitle` exists
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections), // Fixed spacing

              /// Signup Form
              Form(
                child: Column(
                  children: [
                    /// First Name & Last Name in a Row
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields), // Space between fields

                    /// Username
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.edit),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    /// Email
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.email, // Fixed incorrect label
                        prefixIcon: Icon(Iconsax.direct),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    /// Phone Number
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.phoneNo, // Fixed incorrect label
                        prefixIcon: Icon(Iconsax.call),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    /// Password
                    TextFormField(
                      obscureText: true, // Hide password input
                      decoration: const InputDecoration(
                        labelText: TTexts.password, // Fixed incorrect label
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash), // Eye icon for show/hide password
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections), // Final spacing
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
