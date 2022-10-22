import 'package:flutter/material.dart';

import '../../../../src_exports.dart';

class LandingPageBlock2 extends StatelessWidget {
  const LandingPageBlock2({super.key});

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final ThemeData appTheme = Theme.of(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double horizontalPadding =
        AppResponsiveness.getBlockStructureHorizontalPaddingAmount(context);
    final double cardHeight = (screenWidth - horizontalPadding * 2 - 32) / 3;
    final double secondChildHeight = cardHeight * 2 + 17;
    return BlockStructure(
      color: appTheme.colorScheme.surface,
      title: appStrings.components_LandingPage_Block2_Title,
      caption: appStrings.components_LandingPage_Block2_Subtitle,
      childHeight: secondChildHeight,
      child: GridView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: [
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                AppAssetsPaths.logoMercadoLivre,
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                AppAssetsPaths.logoShopee,
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                AppAssetsPaths.logoAmazon,
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                AppAssetsPaths.logoAmericanas,
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                AppAssetsPaths.logoMagalu,
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                const Spacer(),
                const Icon(Icons.storefront_rounded),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  appStrings.components_LandingPage_Block2_CardYourStore,
                  style: appTheme.textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
