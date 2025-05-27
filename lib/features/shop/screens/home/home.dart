import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Column(
                    children: [
                      Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey)),
                      Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.grey)),

                    ],
                  ),)
                ],
              )

        )]),
      ),
    );
  }
}
