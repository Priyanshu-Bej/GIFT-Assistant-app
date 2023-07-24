import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List<Map<String, dynamic>> messages;
  final ScrollController scrollController;

  const MessagesScreen({
    Key? key,
    required this.messages,
    required this.scrollController,
  }) : super(key: key);

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollToBottom();
    });
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return ListView.builder(
      controller: widget.scrollController,
      itemCount: widget.messages.length,
      itemBuilder: (context, index) {
        final message = widget.messages[index];
        final isUserMessage = message['isUserMessage'];

        return Align(
          alignment:
              isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isUserMessage
                  ? const Color.fromARGB(255, 9, 89, 96)
                  : const Color.fromARGB(255, 150, 35, 185).withOpacity(0.8),
            ),
            constraints: BoxConstraints(maxWidth: w * 2 / 3),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
              child: Text(message['message'].text.text[0]),
            ),
          ),
        );
      },
    );
  }

  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.scrollController.animateTo(
        widget.scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }
}
