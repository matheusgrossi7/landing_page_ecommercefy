import 'package:flutter/material.dart';
import 'package:landing_page_ecommercefy/src/src_exports.dart';

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

  Future<void> saveSession(Session session);

  Future<void> saveSelectPlanEvent(SelectPlanEvent event);

  Future<bool> requestAccess(RequestAccessEvent event);
}
