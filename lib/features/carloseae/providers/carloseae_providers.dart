import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../models/chat_message.dart';
import '../models/carloseae_api_service.dart';
import '../repositories/carloseae_repository.dart';
import '../../../core/database/database.dart';

class CarloseaeChatNotifier extends StateNotifier<List<ChatMessage>> {
  final CarloseaeApiService _apiService;
  final CarloseaeRepository _repository;
  String? _conversationId;

  CarloseaeChatNotifier(this._apiService, this._repository) : super([]);

  Future<void> sendMessage(String message) async {
    final currentHistory = List<ChatMessage>.from(state);

    if (_conversationId == null) {
      _conversationId = DateTime.now().millisecondsSinceEpoch.toString();
    }

    final response = await _apiService.sendMessage(
      message: message,
      conversationId: _conversationId!,
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

    try {
      await _repository.saveMessage(userMessage);
      await _repository.saveMessage(assistantMessage);
    } catch (_) {
      // Non-critical: local history is best-effort
    }
  }

  void clear() {
    state = [];
    _conversationId = null;
  }
}

final carloseaeChatProvider = StateNotifierProvider<CarloseaeChatNotifier, List<ChatMessage>>((ref) {
  final db = AppDatabase();
  final repository = CarloseaeRepository(db);
  return CarloseaeChatNotifier(CarloseaeApiService(http.Client()), repository);
});
