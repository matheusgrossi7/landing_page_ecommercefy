import 'package:flutter/material.dart';

import '../../../../src_exports.dart';

class LandingPageBlock0 extends StatelessWidget {
  const LandingPageBlock0({super.key});

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final ThemeData appTheme = Theme.of(context);
    final double landingPageBlockHeight =
        AppResponsiveness.getLandingPageBlockHeight(
      context,
      isFullScreen: true,
    );
    final WindowSize windowSize = AppResponsiveness.getWindowSize(context);
    final double marginSize = AppResponsiveness.getMarginSize(context);
    final bool isRunningOnMobile =
        AppResponsiveness.isRunningOnSmartphoneOrTablet;
    return Container(
      height: landingPageBlockHeight,
      color: appTheme.colorScheme.primary,
      child: Stack(
        children: [
          if (windowSize == WindowSize.large)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 128),
              child: Image.asset(
                AppAssetsPaths.halfStorefrontImage,
                color: appTheme.colorScheme.onPrimary.withOpacity(0.2),
              ),
            ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                marginSize * 2,
                isRunningOnMobile
                    ? marginSize
                    : windowSize == WindowSize.compact
                        ? marginSize + 32
                        : marginSize,
                marginSize * 2,
                marginSize,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: windowSize == WindowSize.large ? 512 : 384,
                    child: Image.asset(
                      AppAssetsPaths.ecommercefyLogoImageTransparentBg,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    appStrings
                        .components_LandingPage_Block0_LandingPage_AppSlogan,
                    textAlign: TextAlign.center,
                    style: windowSize == WindowSize.large
                        ? appTheme.textTheme.displayLarge!.copyWith(
                            color: appTheme.colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          )
                        : appTheme.textTheme.displayMedium!.copyWith(
                            color: appTheme.colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                  ),
                  SizedBox(
                    width: 516,
                    child: Text(
                      appStrings
                          .components_LandingPage_Block0_LandingPage_AppBrief,
                      textAlign: TextAlign.center,
                      style: appTheme.textTheme.titleSmall!.copyWith(
                        color: appTheme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  const ScrollDownButton(),
                ],
              ),
            ),
          ),
          // TODO: Enable the button when the app be ready
          //if (!isRunningOnMobile) const Block0AppBar(),
        ],
      ),
    );
  }
}
