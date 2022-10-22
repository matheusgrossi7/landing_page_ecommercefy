import 'dart:ui';

import '../../src_exports.dart';

class FirebaseStorageImplementation implements Storage {
  @override
  Future<double> getStarterPlanPrice({
    required Locale locale,
    required bool isYearly,
  }) async {
    return isYearly ? 0.78 : 0.98;
  }

  @override
  Future<double> getGrowthPlanPrice({
    required Locale locale,
    required bool isYearly,
  }) async {
    return isYearly ? 47 : 59;
  }

  @override
  Future<double> getScalePlanPrice({
    required Locale locale,
    required bool isYearly,
  }) async {
    return isYearly ? 399 : 499;
  }

  @override
  Future<String> getLandingPageYouTubeVideoId({required Locale locale}) async {
    return 'VZbM9C6oShA';
  }
}
