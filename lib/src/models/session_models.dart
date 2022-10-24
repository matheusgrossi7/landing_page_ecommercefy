class Session {
  final String id;
  final DateTime accessDateTime;
  String ip;
  String leadSource;

  Session({
    required this.id,
    required this.accessDateTime,
    required this.leadSource,
    required this.ip,
  });
}
