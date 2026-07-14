class ChatMessage {
  final String id;
  final String role;
  final String content;
  final DateTime timestamp;
  final List<String>? bibleRefs;
  final List<String>? egwRefs;

  ChatMessage({
    required this.id,
    required this.role,
    required this.content,
    required this.timestamp,
    this.bibleRefs,
    this.egwRefs,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'role': role,
        'content': content,
        'timestamp': timestamp.toIso8601String(),
        'bibleRefs': bibleRefs,
        'egwRefs': egwRefs,
      };

  factory ChatMessage.fromJson(Map<String, dynamic> json) => ChatMessage(
        id: json['id'] as String,
        role: json['role'] as String,
        content: json['content'] as String,
        timestamp: DateTime.parse(json['timestamp'] as String),
        bibleRefs: (json['bibleRefs'] as List<dynamic>?)?.map((e) => e as String).toList(),
        egwRefs: (json['egwRefs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      );
}
