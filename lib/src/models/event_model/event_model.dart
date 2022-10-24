import 'package:cloud_firestore/cloud_firestore.dart';

class Event {
  final String id;
  final String sessionId;
  final Timestamp timestamp;

  Event({
    required this.id,
    required this.sessionId,
    required this.timestamp,
  });
}
