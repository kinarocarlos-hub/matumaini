import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../models/chat_message.dart';
import '../providers/carloseae_providers.dart';

class CarloseaeChatScreen extends ConsumerStatefulWidget {
  const CarloseaeChatScreen({super.key});

  @override
  ConsumerState<CarloseaeChatScreen> createState() => _CarloseaeChatScreenState();
}

class _CarloseaeChatScreenState extends ConsumerState<CarloseaeChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  String? _errorMessage;
  bool _isOffline = false;

  @override
  void initState() {
    super.initState();
    _checkConnectivity();
    Connectivity().onConnectivityChanged.listen((_) => _checkConnectivity());
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _checkConnectivity() async {
    final result = await Connectivity().checkConnectivity();
    if (mounted) {
      setState(() {
        _isOffline = result == ConnectivityResult.none;
        if (!_isOffline && _errorMessage != null) {
          _errorMessage = null;
        }
      });
    }
  }

  Future<void> _sendMessage() async {
    final text = _textController.text.trim();
    if (text.isEmpty || _isLoading || _isOffline) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _textController.clear();
    });

    try {
      await ref.read(carloseaeChatProvider.notifier).sendMessage(text);
    } on TimeoutException catch (_) {
      if (mounted) {
        setState(() {
          _errorMessage = 'Request timed out. Please check your connection and try again.';
        });
      }
    } catch (e) {
      if (mounted) {
        final message = e.toString();
        if (message.contains('Failed to send message') || message.contains('SocketException')) {
          setState(() {
            _errorMessage = 'Unable to reach Carloseae. Please check your internet connection.';
          });
        } else if (message.contains('API key')) {
          setState(() {
            _errorMessage = 'Carloseae is currently unavailable. Please try again later.';
          });
        } else {
          setState(() {
            _errorMessage = 'Something went wrong. Please try again.';
          });
        }
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        _scrollToBottom();
      }
    }
  }

  void _retryLastMessage() {
    final messages = ref.read(carloseaeChatProvider);
    if (messages.isEmpty) return;
    _sendMessage();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final messages = ref.watch(carloseaeChatProvider);
    final theme = Theme.of(context);

    Widget body;
    if (_isOffline) {
      body = Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.wifi_off_rounded, size: 64, color: theme.colorScheme.onSurfaceVariant),
              const SizedBox(height: 24),
              Text(
                'You are offline',
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                'Carloseae needs an internet connection. Connect and try again.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      );
    } else if (messages.isEmpty && !_isLoading) {
      body = Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'Welcome to Carloseae. Ask a Bible study question, '
            'explore a topic, or dig into Adventist history. '
            'I quote from verified sources and will say so when I can\'t.',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      );
    } else {
      body = ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.all(16),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return _MessageBubble(message: message);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carloseae'),
        backgroundColor: theme.colorScheme.surface,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('About Carloseae'),
                  content: const Text(
                    'Carloseae is an AI study companion built into Matumaini. '
                    'It openly reflects a Seventh-day Adventist perspective and '
                    'quotes Scripture and Ellen G. White from verified sources. '
                    'It is not a substitute for pastoral or professional care.',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: body),
          if (_errorMessage != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              color: theme.colorScheme.errorContainer,
              child: Row(
                children: [
                  Icon(Icons.error_outline, color: theme.colorScheme.onErrorContainer, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _errorMessage!,
                      style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onErrorContainer),
                    ),
                  ),
                  TextButton(
                    onPressed: _retryLastMessage,
                    child: Text('Retry', style: TextStyle(color: theme.colorScheme.onErrorContainer)),
                  ),
                ],
              ),
            ),
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.all(8),
              child: LinearProgressIndicator(),
            ),
          _buildInputArea(),
        ],
      ),
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: MediaQuery.of(context).viewInsets.bottom + 8,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          top: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              maxLines: null,
              textInputAction: TextInputAction.send,
              enabled: !_isOffline,
              decoration: InputDecoration(
                hintText: _isOffline ? 'No internet connection' : 'Ask Carloseae a question...',
                border: const OutlineInputBorder(),
              ),
              onSubmitted: (_) => _sendMessage(),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: _isLoading || _isOffline ? null : _sendMessage,
            icon: Icon(_isOffline ? Icons.wifi_off_rounded : Icons.send),
          ),
        ],
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  final ChatMessage message;

  const _MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    final isUser = message.role == 'user';
    final colors = Theme.of(context).colorScheme;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isUser ? colors.primary : colors.surface,
          borderRadius: BorderRadius.circular(16),
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.content,
              style: TextStyle(
                color: isUser ? Colors.white : colors.onSurface,
              ),
            ),
            if (message.bibleRefs != null && message.bibleRefs!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Wrap(
                  spacing: 8,
                  children: message.bibleRefs!
                      .map((ref) => Chip(
                            label: Text(ref, style: const TextStyle(fontSize: 12)),
                            backgroundColor: colors.primaryContainer,
                          ))
                      .toList(),
                ),
              ),
            if (message.egwRefs != null && message.egwRefs!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Wrap(
                  spacing: 8,
                  children: message.egwRefs!
                      .map((ref) => Chip(
                            label: Text(ref, style: const TextStyle(fontSize: 12)),
                            backgroundColor: colors.secondaryContainer,
                          ))
                      .toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
