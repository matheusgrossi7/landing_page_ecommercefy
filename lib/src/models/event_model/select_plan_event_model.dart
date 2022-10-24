import '../../src_exports.dart';

class SelectPlanEvent extends Event {
  final String planType;
  final bool isYearlyRecurrence;

  SelectPlanEvent({
    required super.id,
    required super.sessionId,
    required super.dateTime,
    required this.planType,
    required this.isYearlyRecurrence,
  });
}
