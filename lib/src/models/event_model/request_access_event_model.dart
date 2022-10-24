import '../../src_exports.dart';

class RequestAccessEvent extends Event {
  final String leadName;
  final String leadEmail;

  RequestAccessEvent({
    required super.id,
    required super.sessionId,
    required super.dateTime,
    required this.leadName,
    required this.leadEmail,
  });
}
