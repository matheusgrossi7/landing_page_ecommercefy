import 'package:flutter/material.dart';

import '../../../../src_exports.dart';

class LandingPageBlock5 extends StatelessWidget {
  const LandingPageBlock5({super.key});

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final ThemeData appTheme = Theme.of(context);
    final WindowSize windowSize = AppResponsiveness.getWindowSize(context);
    final double marginSize = AppResponsiveness.getMarginSize(context);
    final double blockStructureHorizontalPaddingAmount =
        AppResponsiveness.getBlockStructureHorizontalPaddingAmount(
      context,
    );
    final double dMarginSize =
        windowSize == WindowSize.large ? marginSize : marginSize * 2;
    return Container(
      width: MediaQuery.of(context).size.width,
      color: appTheme.colorScheme.primary,
      child: Padding(
        padding: EdgeInsets.only(
          top: windowSize == WindowSize.large ? dMarginSize * 2 : dMarginSize,
          bottom: dMarginSize,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                blockStructureHorizontalPaddingAmount,
                marginSize,
                blockStructureHorizontalPaddingAmount,
                0,
              ),
              child: Text(
                appStrings.components_LandingPage_Block5_Title,
                style: windowSize == WindowSize.large
                    ? appTheme.textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: appTheme.colorScheme.onPrimary,
                      )
                    : appTheme.textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: appTheme.colorScheme.onPrimary,
                      ),
              ),
            ),
            SizedBox(
              height: dMarginSize,
            ),
            Text(
              appStrings.components_LandingPage_Block5_PlanToggleButtonTitle,
              style: appTheme.textTheme.labelLarge!.copyWith(
                color: appTheme.colorScheme.onPrimary,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const PlanRecurrenceToggle(),
            SizedBox(
              height: dMarginSize,
            ),
            const PlansList(),
            SizedBox(
              height: windowSize == WindowSize.large
                  ? dMarginSize * 2
                  : dMarginSize,
            ),
          ],
        ),
      ),
    );
  }
}
