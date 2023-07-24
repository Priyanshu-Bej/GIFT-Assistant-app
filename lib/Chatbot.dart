import 'package:flutter/material.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> messages = [];
  DialogFlowtter? dialogFlowtter;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    DialogFlowtter.fromFile().then((instance) {
      setState(() {
        dialogFlowtter = instance;
      });
      sendGreeting();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GIFT Bot -Beta'),
      ),
      body: Container(
        color: Colors.grey[900],
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  final bool isUserMessage = message['isUserMessage'];
                  final text = message['message'].text.text[0];

                  return ListTile(
                    title: Align(
                      alignment: isUserMessage
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color:
                              isUserMessage ? Colors.green : Colors.grey[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          text,
                          style: TextStyle(
                            color: isUserMessage ? Colors.white : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.grey[800],
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        fillColor: Colors.grey[900],
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Material(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30.0),
                      onTap: () => sendMessage(_textEditingController.text),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void sendMessage(String text) async {
    if (text.isEmpty) {
      return;
    } else {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
        _textEditingController.clear();
      });

      DetectIntentResponse? response = await dialogFlowtter?.detectIntent(
        queryInput: QueryInput(text: TextInput(text: text)),
      );
      if (response?.message == null) return;
      setState(() {
        addMessage(response!.message!);
      });

      // Scroll to the bottom when a new message is added
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void addMessage(Message message, [bool isUserMessage = false]) {
    setState(() {
      messages.add({'message': message, 'isUserMessage': isUserMessage});
    });
  }

  void sendGreeting() async {
    final greetingText =
        'Hello'; // Customize the greeting message as per your needs

    if (dialogFlowtter != null) {
      DetectIntentResponse response = await dialogFlowtter!.detectIntent(
        queryInput: QueryInput(text: TextInput(text: greetingText)),
      );

      if (response.message != null) {
        setState(() {
          addMessage(response.message!);
        });

        // Scroll to the bottom when a new message is added
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }
}
