import 'package:flutter/material.dart';

abstract class Storage {
  Future<double> getStarterPlanPrice({
    required Locale locale,
    required bool isYearly,
  });

  Future<double> getGrowthPlanPrice({
    required Locale locale,
    required bool isYearly,
  });

  Future<double> getScalePlanPrice({
    required Locale locale,
    required bool isYearly,
  });

  Future<String> getLandingPageYouTubeVideoId({
    required Locale locale,
  });
}
