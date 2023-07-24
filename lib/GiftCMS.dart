import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class GiftCMS extends StatelessWidget {
  const GiftCMS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GIFT CMS'),
      ),
      body: Column(
        children: [
          Expanded(
              child: InAppWebView(
            initialUrlRequest: URLRequest(
              url:
                  Uri.parse('https://cms.gift.edu.in/index.php?r=site%2Flogin'),
            ),
          )),
        ],
      ),
    );
  }
}
