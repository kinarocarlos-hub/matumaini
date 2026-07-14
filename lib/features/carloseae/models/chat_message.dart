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

  ChatMessage copyWith({
    String? id,
    String? role,
    String? content,
    DateTime? timestamp,
    List<String>? bibleRefs,
    List<String>? egwRefs,
  }) {
    return ChatMessage(
      id: id ?? this.id,
      role: role ?? this.role,
      content: content ?? this.content,
      timestamp: timestamp ?? this.timestamp,
      bibleRefs: bibleRefs ?? this.bibleRefs,
      egwRefs: egwRefs ?? this.egwRefs,
    );
  }
}
