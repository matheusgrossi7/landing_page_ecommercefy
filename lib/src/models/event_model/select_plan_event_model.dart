import '../../src_exports.dart';

class SelectPlanEvent extends Event {
  final String planType;
  final bool isYearlyRecurrence;

  SelectPlanEvent({
    required super.id,
    required super.sessionId,
    required super.timestamp,
    required this.planType,
    required this.isYearlyRecurrence,
  });
}
