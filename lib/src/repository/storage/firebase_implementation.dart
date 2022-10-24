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

  @override
  Future<void> requestAccess(RequestAccessEvent event) async {
    print(event.leadEmail);
    print(event.leadName);
    print(event.sessionId);
  }

  @override
  Future<void> saveSelectPlanEvent(SelectPlanEvent event) async {
    print(event.isYearlyRecurrence);
    print(event.planType);
    print(event.sessionId);
    print(event.dateTime);
  }

  @override
  Future<void> saveSession(Session session) async {
    print(session.accessDateTime);
    print(session.id);
    print(session.leadSource);
    print(session.ip);
  }
}
