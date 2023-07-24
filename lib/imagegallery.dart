// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';

// class GalleryPage extends StatefulWidget {
//   @override
//   _GalleryPageState createState() => _GalleryPageState();
// }

// class _GalleryPageState extends State<GalleryPage> {
//   List<String> allImages = [
//     'assets/gallery/placement/1.jpg',
//     'https://www.gift.edu.in/wp-content/uploads/2023/06/logo2.png',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//   ];

//   List<String> placementImages = [
//     'assets/gallery/placement/1.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//   ];

//   List<String> sportsImages = [
//     'assets/gallery/placement/1.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//   ];

//   List<String> eventsImages = [
//     // List of events gallery images
//     // Replace the URLs with your actual image URLs
//     'assets/gallery/placement/1.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     // Add more images as needed
//   ];

//   List<String> occasionsImages = [
//     'assets/gallery/placement/1.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//   ];

//   List<String> awardsImages = [
//     'assets/gallery/placement/1.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//   ];

//   List<String> filteredImages = [
//     'assets/gallery/placement/1.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/1.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//     'assets/gallery/placement/2.jpg',
//   ];

//   String selectedCategory = 'All';

//   void filterImagesByCategory(String? category) {
//     setState(() {
//       selectedCategory = category ?? 'All';

//       if (selectedCategory == 'All') {
//         filteredImages = allImages;
//       } else if (selectedCategory == 'Placement') {
//         filteredImages = placementImages;
//       } else if (selectedCategory == 'Sports') {
//         filteredImages = sportsImages;
//       } else if (selectedCategory == 'Events') {
//         filteredImages = eventsImages;
//       } else if (selectedCategory == 'Occasions') {
//         filteredImages = occasionsImages;
//       } else if (selectedCategory == 'Awards') {
//         filteredImages = awardsImages;
//       }
//     });
//   }

//   final FirebaseStorage storage = FirebaseStorage.instance;
//   String? imageUrl;
//   Future<void> _getImageUrl() async {
//     final ref = storage.ref().child('poster2.jpg');
//     final url = await ref.getDownloadURL();
//     setState(() {
//       imageUrl = url;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     filteredImages = allImages;
//     _getImageUrl();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Gallery'),
//       ),
//       body: Container(
//         color: Colors.black,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0), // Rounded corners
//                   color: Colors.grey[900], // Dropdown menu background color
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
//                   child: DropdownButton<String>(
//                     value: selectedCategory,
//                     onChanged: filterImagesByCategory,
//                     dropdownColor:
//                         Colors.grey[900], // Dropdown menu background color
//                     style: TextStyle(
//                         color: Colors.white), // Dropdown menu text color
//                     items: [
//                       DropdownMenuItem(
//                         value: 'All',
//                         child: Text('All'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Placement',
//                         child: Text('Placement'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Sports',
//                         child: Text('Sports'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Events',
//                         child: Text('Events'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Occasions',
//                         child: Text('Occasions'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Awards',
//                         child: Text('Awards'),
//                       ),
//                     ],
//                     underline: Container(),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: GridView.builder(
//                 padding: EdgeInsets.all(16.0),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 16.0,
//                   mainAxisSpacing: 16.0,
//                 ),
//                 itemCount: filteredImages.length,
//                 itemBuilder: (context, index) {
//                   return
//                       // Image.network(
//                       //   filteredImages[index],
//                       //   fit: BoxFit.cover,
//                       // );
//                       Image(
//                     image: AssetImage(filteredImages[index]),
//                     fit: BoxFit.cover,
//                   );
//                 },
//               ),
//             ),
//             Center(
//               child: imageUrl != null
//                   ? Image.network(imageUrl!)
//                   : CircularProgressIndicator(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List<String> allImages = [
    'assets/gallery/placement/1.jpg',
    'https://www.gift.edu.in/wp-content/uploads/2023/06/logo2.png',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
  ];

  List<String> placementImages = [
    'assets/gallery/placement/1.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
  ];

  List<String> sportsImages = [
    'assets/gallery/placement/1.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
  ];

  List<String> eventsImages = [
    // List of events gallery images
    // Replace the URLs with your actual image URLs
    'assets/gallery/placement/1.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    // Add more images as needed
  ];

  List<String> occasionsImages = [
    'assets/gallery/placement/1.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
  ];

  List<String> awardsImages = [
    'assets/gallery/placement/1.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
  ];

  List<String> filteredImages = [];
  final List<String> filteredImagesAssets = [
    'assets/gallery/placement/1.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/1.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
    'assets/gallery/placement/2.jpg',
  ];

  String selectedCategory = 'All';

  void filterImagesByCategory(String? category) {
    setState(() {
      selectedCategory = category ?? 'All';

      if (selectedCategory == 'All') {
        filteredImages = allImages;
      } else if (selectedCategory == 'Placement') {
        filteredImages = placementImages;
      } else if (selectedCategory == 'Sports') {
        filteredImages = sportsImages;
      } else if (selectedCategory == 'Events') {
        filteredImages = eventsImages;
      } else if (selectedCategory == 'Occasions') {
        filteredImages = occasionsImages;
      } else if (selectedCategory == 'Awards') {
        filteredImages = awardsImages;
      }
    });
  }

  final FirebaseStorage storage = FirebaseStorage.instance;
  String? imageUrl;
  Future<void> _getImageUrl() async {
    final ref = storage.ref().child('poster2.jpg');
    final url = await ref.getDownloadURL();
    setState(() {
      imageUrl = url;
    });
  }

  @override
  void initState() {
    super.initState();
    filteredImages = allImages;
    _getImageUrl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                  color: Colors.grey[900], // Dropdown menu background color
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  child: DropdownButton<String>(
                    value: selectedCategory,
                    onChanged: filterImagesByCategory,
                    dropdownColor:
                        Colors.grey[900], // Dropdown menu background color
                    style: TextStyle(
                        color: Colors.white), // Dropdown menu text color
                    items: [
                      DropdownMenuItem(
                        value: 'All',
                        child: Text('All'),
                      ),
                      DropdownMenuItem(
                        value: 'Placement',
                        child: Text('Placement'),
                      ),
                      DropdownMenuItem(
                        value: 'Sports',
                        child: Text('Sports'),
                      ),
                      DropdownMenuItem(
                        value: 'Events',
                        child: Text('Events'),
                      ),
                      DropdownMenuItem(
                        value: 'Occasions',
                        child: Text('Occasions'),
                      ),
                      DropdownMenuItem(
                        value: 'Awards',
                        child: Text('Awards'),
                      ),
                    ],
                    underline: Container(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(16.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: filteredImagesAssets.length,
                itemBuilder: (context, index) {
                  return Image(
                    image: AssetImage(filteredImagesAssets[index]),
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),

            // Center(
            //   child: imageUrl != null
            //       ? Image.network(imageUrl!)
            //       : CircularProgressIndicator(),
            // ),
          ],
        ),
      ),
    );
  }
}
