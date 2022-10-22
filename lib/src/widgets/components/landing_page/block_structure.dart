import 'package:flutter/material.dart';

import '../../../src_exports.dart';

class BlockStructure extends StatelessWidget {
  const BlockStructure({
    super.key,
    required this.child,
    required this.color,
    required this.title,
    required this.caption,
    required this.childHeight,
    this.isChildOnFirstHalfInLargeWindow = false,
    this.isChildOnFirstHalfInNonLargeWindow = false,
  });

  final String title;
  final String caption;
  final double childHeight;
  final Widget child;
  final Color color;
  final bool isChildOnFirstHalfInLargeWindow;
  final bool isChildOnFirstHalfInNonLargeWindow;

  @override
  Widget build(BuildContext context) {
    final ThemeData appTheme = Theme.of(context);
    final WindowSize windowSize = AppResponsiveness.getWindowSize(context);
    final double landingPageBlockHeight =
        AppResponsiveness.getLandingPageBlockHeight(context);
    final double marginSize = AppResponsiveness.getMarginSize(context);
    final double subBlockSpaceBetween = marginSize * 4;
    final double subBlockWidth =
        AppResponsiveness.getLandingPageSubBlockWidthForLargeScreen(context) -
            subBlockSpaceBetween;
    final Widget firstChild = SizedBox(
      width: subBlockWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            title,
            style: appTheme.textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            caption,
            style: appTheme.textTheme.labelLarge,
          ),
          const SizedBox(
            height: 32,
          ),
          const CTAButton(),
          const Spacer(),
        ],
      ),
    );
    final Widget childForLargeWindow = SizedBox(
      width: subBlockWidth,
      child: Column(
        children: [
          const Spacer(),
          child,
          const Spacer(),
        ],
      ),
    );
    final Widget childForNonLargeWindow = SizedBox(
      height: childHeight,
      child: child,
    );
    final Widget blockCaptionForLargeWindow = Text(
      caption,
      style: appTheme.textTheme.labelLarge,
    );
    return windowSize == WindowSize.large
        ? Container(
            height: landingPageBlockHeight,
            color: color,
            child: Padding(
              padding: EdgeInsets.all(marginSize),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isChildOnFirstHalfInLargeWindow
                      ? childForLargeWindow
                      : firstChild,
                  SizedBox(
                    width: subBlockSpaceBetween,
                  ),
                  isChildOnFirstHalfInLargeWindow
                      ? firstChild
                      : childForLargeWindow,
                ],
              ),
            ),
          )
        : Container(
            color: color,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal:
                    AppResponsiveness.getBlockStructureHorizontalPaddingAmount(
                  context,
                ),
                vertical:
                    AppResponsiveness.getBlockStructureVerticalPaddingAmount(
                  context,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    title,
                    style: appTheme.textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  isChildOnFirstHalfInNonLargeWindow
                      ? blockCaptionForLargeWindow
                      : childForNonLargeWindow,
                  const SizedBox(
                    height: 32,
                  ),
                  isChildOnFirstHalfInNonLargeWindow
                      ? childForNonLargeWindow
                      : blockCaptionForLargeWindow,
                  const SizedBox(
                    height: 32,
                  ),
                  const CTAButton(),
                ],
              ),
            ),
          );
  }
}
