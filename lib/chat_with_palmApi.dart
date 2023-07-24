// // ignore_for_file: file_names

// import 'package:cloud_firestore/cloud_firestore.dart';

// class ChatWithPalmApi {
//   final FirebaseFirestore _firestore;

//   ChatWithPalmApi({
//     FirebaseFirestore? firestore,
//   }) : _firestore = firestore ?? FirebaseFirestore.instance;

//   Future<void> sendMessage() async {
//     final ref = await _firestore
//         .collection("discussions")
//         .add({'prompt': 'Hello GoodMorning'});

//     ref.snapshots().listen((event) {
//       print(event.data());
//     });
//   }
// }
