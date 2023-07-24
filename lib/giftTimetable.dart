import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class giftTimetable extends StatelessWidget {
  const giftTimetable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timetable'),
      ),
      body: Column(
        children: [
          Expanded(
              child: InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse('https://timetable.gift.edu.in/'),
            ),
          )),
        ],
      ),
    );
  }
}
