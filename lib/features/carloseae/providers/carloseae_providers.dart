import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../models/chat_message.dart';
import '../models/carloseae_api_service.dart';

class CarloseaeChatNotifier extends StateNotifier<List<ChatMessage>> {
  final CarloseaeApiService _apiService;

  CarloseaeChatNotifier(this._apiService) : super([]);

  Future<void> sendMessage(String message) async {
    final currentHistory = List<ChatMessage>.from(state);
    final conversationId = currentHistory.isEmpty
        ? DateTime.now().millisecondsSinceEpoch.toString()
        : currentHistory.first.id;

    final response = await _apiService.sendMessage(
      message: message,
      conversationId: conversationId,
      history: currentHistory,
    );

    final userMessage = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      role: 'user',
      content: message,
      timestamp: DateTime.now(),
    );

    final assistantMessage = ChatMessage(
      id: (DateTime.now().millisecondsSinceEpoch + 1).toString(),
      role: 'assistant',
      content: response.reply,
      timestamp: DateTime.now(),
      bibleRefs: response.bibleRefs,
      egwRefs: response.egwRefs,
    );

    state = [userMessage, assistantMessage, ...currentHistory];
  }

  void clear() {
    state = [];
  }
}

final carloseaeChatProvider = StateNotifierProvider<CarloseaeChatNotifier, List<ChatMessage>>((ref) {
  return CarloseaeChatNotifier(CarloseaeApiService(http.Client()));
});
