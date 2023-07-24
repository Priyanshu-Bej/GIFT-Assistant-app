// import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

// class PDFPage extends StatefulWidget {
//   final String pdfFilePath;

//   const PDFPage({required this.pdfFilePath});

//   @override
//   _PDFPageState createState() => _PDFPageState();
// }

// class _PDFPageState extends State<PDFPage> {
//   late PDFViewController _pdfViewController;
//   Future<String> fetchPdfUrlFromFirebase(String filePath) async {
//     final ref = firebase_storage.FirebaseStorage.instance.ref(filePath);
//     final url = await ref.getDownloadURL();
//     return url;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PDF Viewer'),
//       ),
//       body: FutureBuilder<String>(
//         future: fetchPdfUrlFromFirebase(widget.pdfFilePath),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done &&
//               snapshot.hasData) {
//             return PDFView(
//               filePath: snapshot.data!,
//               onViewCreated: (PDFViewController pdfViewController) {
//                 _pdfViewController = pdfViewController;
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Error loading PDF'),
//             );
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     // _pdfViewController.dispose();
//     super.dispose();
//   }
// }
