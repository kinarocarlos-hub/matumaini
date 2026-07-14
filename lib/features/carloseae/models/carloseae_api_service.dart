import 'dart:convert';
import 'package:http/http.dart' as http;
import 'chat_message.dart';

class CarloseaeApiService {
  static const String baseUrl = String.fromEnvironment(
    'CARLOSEAE_API_URL',
    defaultValue: 'http://localhost:8080/carloseae',
  );

  final http.Client _client;

  CarloseaeApiService(this._client);

  Future<ChatResponse> sendMessage({
    required String message,
    required String conversationId,
    required List<ChatMessage> history,
  }) async {
    final uri = Uri.parse('$baseUrl/chat');

    final response = await _client.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'message': message,
        'conversationId': conversationId,
        'history': history
            .map((m) => {'role': m.role, 'content': m.content})
            .toList(),
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to send message: ${response.statusCode}');
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    return ChatResponse.fromJson(data);
  }
}

class ChatResponse {
  final String reply;
  final List<String> bibleRefs;
  final List<String> egwRefs;
  final List<String> droppedReferences;
  final String conversationId;

  ChatResponse({
    required this.reply,
    required this.bibleRefs,
    required this.egwRefs,
    required this.droppedReferences,
    required this.conversationId,
  });

  factory ChatResponse.fromJson(Map<String, dynamic> json) {
    return ChatResponse(
      reply: json['reply'] as String? ?? '',
      bibleRefs: (json['retrievedBibleRefs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      egwRefs: (json['retrievedEgwRefs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      droppedReferences: (json['droppedReferences'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      conversationId: json['conversationId'] as String? ?? '',
    );
  }
}
