import 'dart:convert';
import 'package:drift/drift.dart';
import '../../../core/database/database.dart';
import '../models/chat_message.dart';

class CarloseaeRepository {
  final AppDatabase _db;

  CarloseaeRepository(this._db);

  Future<void> saveMessage(ChatMessage message) async {
    await _db.into(_db.carloseaeConversations).insert(
          CarloseaeConversationsCompanion.insert(
            conversationId: message.id,
            role: message.role,
            content: message.content,
            timestamp: message.timestamp.millisecondsSinceEpoch,
            bibleRefsJson: Value(message.bibleRefs != null ? jsonEncode(message.bibleRefs) : null),
            egwRefsJson: Value(message.egwRefs != null ? jsonEncode(message.egwRefs) : null),
          ),
        );
  }

  Future<List<ChatMessage>> getConversation(String conversationId) async {
    final rows = await (_db.select(_db.carloseaeConversations)
          ..where((t) => t.conversationId.equals(conversationId))
          ..orderBy([(t) => OrderingTerm(expression: t.timestamp)]))
        .get();

    return rows.map((row) {
      return ChatMessage(
        id: row.conversationId,
        role: row.role,
        content: row.content,
        timestamp: DateTime.fromMillisecondsSinceEpoch(row.timestamp),
        bibleRefs: row.bibleRefsJson != null ? List<String>.from(jsonDecode(row.bibleRefsJson!)) : null,
        egwRefs: row.egwRefsJson != null ? List<String>.from(jsonDecode(row.egwRefsJson!)) : null,
      );
    }).toList();
  }

  Future<void> clearConversation(String conversationId) async {
    await (_db.delete(_db.carloseaeConversations)
          ..where((t) => t.conversationId.equals(conversationId)))
        .go();
  }
}
