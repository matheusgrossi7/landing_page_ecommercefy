/// https://m3.material.io/foundations/adaptive-design/large-screens/overview

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

import '../src_exports.dart';

class AppResponsiveness {
  static double get columnMaxExtent => 352;

  static bool get isRunningOnWeb => kIsWeb;

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
    } else if (screenWidth < 840) {
      return WindowSize.medium;
    } else {
      return WindowSize.large;
    }
  }

  static double getMarginSize(BuildContext context) {
    WindowSize windowSize = getWindowSize(context);
    return windowSize == WindowSize.large ? 32 : 16;
  }

  static double getLandingPageBlockHeight(BuildContext context) {
    const double minBlockHeight = 600;
    double screenHeight = MediaQuery.of(context).size.height;
    return screenHeight < minBlockHeight ? minBlockHeight : screenHeight;
  }
}
