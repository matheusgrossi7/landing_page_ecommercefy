import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

import '../src_exports.dart';

class AppResponsiveness {
  static double get columnMaxExtent => 352;

  static bool get isRunningOnWeb => kIsWeb;

  static bool get isRunningOnMobileWeb =>
      kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android);

  static bool get isRunningOnSmartphoneOrTablet =>
      !kIsWeb && (Platform.isAndroid || Platform.isIOS);

  static double get landingPageBlockContentMaxWidth => 1000;

  static int getColumnsAmountIn(double width) {
    return width ~/ columnMaxExtent;
  }

  static WindowSize getWindowSize(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      return WindowSize.compact;
    } else if (screenWidth < 900) {
      return WindowSize.medium;
    } else {
      return WindowSize.large;
    }
  }

  static double getBlockStructureHorizontalPaddingAmount(BuildContext context) {
    final double marginSize = getMarginSize(context);
    return getWindowSize(context) == WindowSize.compact
        ? marginSize * 2
        : marginSize * 4;
  }

  static double getBlockStructureVerticalPaddingAmount(BuildContext context) {
    final double marginSize = getMarginSize(context);
    return getWindowSize(context) == WindowSize.large
        ? marginSize
        : marginSize * 4;
  }

  static double getMarginSize(BuildContext context) {
    WindowSize windowSize = getWindowSize(context);
    final double marginSize = windowSize == WindowSize.large ? 32 : 16;
    return marginSize;
  }

  static double getPlanCardWidth(BuildContext context) {
    const double maxCardWidth = 348;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = screenWidth -
        2 * getBlockStructureHorizontalPaddingAmount(context) -
        getMarginSize(context);
    return cardWidth > maxCardWidth ? maxCardWidth : cardWidth;
  }

  static double getLandingPageBlockHeight(
    BuildContext context, {
    bool isFullScreen = false,
  }) {
    double screenHeight = MediaQuery.of(context).size.height;
    const double minBlock0Height = 640;
    const double blockHeight = 576;
    double block0Height =
        screenHeight < blockHeight ? minBlock0Height : screenHeight;
    return isFullScreen ? block0Height : blockHeight;
  }

  static double getLandingPageSubBlockWidthForLargeScreen(
      BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final double marginSize = getMarginSize(context);
    const double maxBlockWidth = 1080;
    final double subBlockWidth = (screenWidth - marginSize * 2) / 2;
    return screenWidth > maxBlockWidth ? maxBlockWidth / 2 : subBlockWidth;
  }
}
