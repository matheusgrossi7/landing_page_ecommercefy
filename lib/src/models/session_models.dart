import 'package:cloud_firestore/cloud_firestore.dart';

class Session {
  final String id;
  final Timestamp accessTimestamp;
  String ip;
  String leadSource;

  Session({
    required this.id,
    required this.accessTimestamp,
    required this.leadSource,
    required this.ip,
  });
}
