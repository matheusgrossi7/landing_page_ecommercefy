import 'package:flutter/material.dart';

import '../../../../src_exports.dart';

class LandingPageBlock4 extends StatelessWidget {
  const LandingPageBlock4({super.key});

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    return BlockStructure(
      color: Theme.of(context).colorScheme.surface,
      title: appStrings.components_LandingPage_Block4_Title,
      caption: appStrings.components_LandingPage_Block4_Subtitle,
      childHeight: 352,
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Image.asset(
            AppAssetsPaths.googleShoppingImage,
            filterQuality: FilterQuality.medium,
          ),
        ),
      ),
    );
  }
}
