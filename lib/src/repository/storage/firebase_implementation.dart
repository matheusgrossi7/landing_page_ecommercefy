import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';

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
  Future<bool> requestAccess(RequestAccessEvent event) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      await firestore.collection('requests').add(
        {
          "id": event.id,
          "sessionId": event.sessionId,
          "timestamp": event.timestamp,
          "leadName": event.leadName,
          "leadEmail": event.leadEmail,
        },
      );
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<void> saveSelectPlanEvent(SelectPlanEvent event) async {
    bool wasCompleted = false;
    while (!wasCompleted) {
      try {
        FirebaseFirestore firestore = FirebaseFirestore.instance;
        await firestore.collection('events').add(
          {
            "id": event.id,
            "sessionId": event.sessionId,
            "timestamp": event.timestamp,
            "planType": event.planType,
            "isYearlyRecurrence": event.isYearlyRecurrence,
          },
        );
        wasCompleted = true;
      } catch (_) {
        await Future.delayed(const Duration(milliseconds: 300));
      }
    }
  }

  @override
  Future<void> saveSession(Session session) async {
    bool wasCompleted = false;
    while (!wasCompleted) {
      try {
        FirebaseFirestore firestore = FirebaseFirestore.instance;
        await firestore.collection('sessions').add(
          {
            "id": session.id,
            "ip": session.ip,
            "leadSource": session.leadSource,
            "accessTimestamp": session.accessTimestamp,
            "isRunningOnMobileWeb": session.isRunningOnMobileWeb,
          },
        );
        wasCompleted = true;
      } catch (_) {
        await Future.delayed(const Duration(milliseconds: 300));
      }
    }
  }
}
