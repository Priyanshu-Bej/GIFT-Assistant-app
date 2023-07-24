import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';


class FileDisplayPage extends StatelessWidget {
  final String? fileUrl;
  final FileType? fileType;

  FileDisplayPage({required this.fileUrl, required this.fileType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Display'),
      ),
      body: Center(
        child: fileType == FileType.image
            ? Image.network(fileUrl!)
            : PDFView(
                filePath: fileUrl,
              ),
      ),
    );
  }
}

enum FileType {
  image,
  pdf,
}
