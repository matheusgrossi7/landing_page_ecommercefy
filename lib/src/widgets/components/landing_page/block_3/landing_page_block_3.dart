import 'package:flutter/material.dart';

import '../../../../src_exports.dart';

class LandingPageBlock3 extends StatelessWidget {
  const LandingPageBlock3({super.key});

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    const double heightSecondHalfChild = 352;
    return BlockStructure(
      isChildOnFirstHalfInLargeWindow: true,
      color: Theme.of(context).scaffoldBackgroundColor,
      title: appStrings.components_LandingPage_Block3_Title,
      caption: appStrings.components_LandingPage_Block3_Subtitle,
      childHeight: heightSecondHalfChild,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: SizedBox(
              height: heightSecondHalfChild,
              child: Image.asset(
                AppAssetsPaths.integrateWithSocialNetwork,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
