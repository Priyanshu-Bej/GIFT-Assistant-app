import 'package:ai_chatbot_app/GiftCMS.dart';
import 'package:ai_chatbot_app/placementsInfo.dart';
import 'package:ai_chatbot_app/scholarshipPage.dart';
import 'package:ai_chatbot_app/socialMedia_handles.dart';
import 'package:ai_chatbot_app/subjectSuggestion.dart';
import 'package:ai_chatbot_app/transportationDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'AboutUs.dart';
import 'Chatbot.dart';
import 'Courses.dart';
import 'SettingsPage.dart';
import 'contactUs.dart';
import 'examSchedule.dart';
import 'giftTimetable.dart';
import 'imagegallery.dart';
import 'infoCards.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final currentTime = DateFormat('hh:mm a').format(DateTime.now());
  // final currentDate = DateFormat('MMM dd, yyyy').format(DateTime.now());
  DateTime? currentBackPressTime;

  Future<bool> _onWillPop() async {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      final snackBar = SnackBar(
        content: Text(
          'Press back again to exit',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        backgroundColor: Colors.grey[900], // Dark gray background color
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );

      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(snackBar);

      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black38,
            elevation: 2,
            leading: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Image.asset(
                'assets/logo.png',
                width: 40.0,
                // height: 30.0,
              ),
            ),
            title: Text(
              'GIFT Autonomous',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.arrow_outward_rounded,
                  color: Colors.white,
                ),
                onPressed: () async {
                  String websitelink = 'https://www.gift.edu.in/';

                  if (await launch(websitelink)) {
                  } else {
                    throw 'Could not launch $websitelink';
                  }
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 210.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      List<String> imagePaths = [
                        'assets/poster1.jpg',
                        'assets/poster2.jpg',
                        'assets/poster3.jpg',
                        'assets/poster4.jpg',
                        'assets/poster5.jpg',
                      ];

                      String imagePath = imagePaths[index % imagePaths.length];
                      return Container(
                        width: 350.0,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.grey.withOpacity(0.9)
                                  : Colors.transparent,
                              blurRadius: 6.0,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Container(
                //   width: 350.0,
                //   height: 30.0,
                //   decoration: BoxDecoration(
                //     color: Colors.black,
                //     borderRadius: BorderRadius.circular(15.0),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.black.withOpacity(0.4),
                //         offset: Offset(0, 2),
                //         blurRadius: 4.0,
                //       ),
                //     ],
                //   ),
                //   child: Marquee(
                //     text: 'This is a stylish running text',
                //     style: TextStyle(
                //       fontSize: 16.0,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white,
                //     ),
                //     scrollAxis: Axis.horizontal,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     blankSpace: 20.0,
                //     velocity: 100.0,
                //     pauseAfterRound: Duration(seconds: 1),
                //     accelerationDuration: Duration(seconds: 1),
                //     accelerationCurve: Curves.linear,
                //     decelerationDuration: Duration(milliseconds: 500),
                //     decelerationCurve: Curves.easeOut,
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         'Current Time',
                //         style:
                //             TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                //       ),
                //       Text(
                //         currentTime,
                //         style: TextStyle(fontSize: 48),
                //       ),
                //       SizedBox(height: 16),
                //       Text(
                //         'Current Date',
                //         style:
                //             TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                //       ),
                //       Text(
                //         currentDate,
                //         style: TextStyle(fontSize: 48),
                //       ),
                //     ],
                //   ),
                // ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade800.withOpacity(0.5),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tools',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildTool(
                            icon: Icons.chat_outlined,
                            IconColor: Colors.green[400],
                            title: 'AI ChatBot',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatScreen()),
                            ),
                          ),
                          _buildTool(
                            icon: Icons.person,
                            title: 'GIFT CMS',
                            IconColor: Colors.blue,
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GiftCMS()),
                            ),
                          ),
                          _buildTool(
                            icon: Icons.watch_later_outlined,
                            IconColor: Colors.yellow,
                            title: 'Timetable',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => giftTimetable()),
                            ),
                          ),
                          _buildTool(
                            icon: Icons.notifications_none,
                            title: 'Notice',
                            IconColor: Colors.pink[300],
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NoticesPage(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildTool(
                            icon: CupertinoIcons.building_2_fill,
                            IconColor: Colors.red[400],
                            title: 'Placement\n    Drives',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlacementDrives()),
                            ),
                          ),
                          _buildTool(
                            icon: Icons.image,
                            IconColor: Colors.teal,
                            title: 'Gallery\n',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GalleryPage()),
                            ),
                          ),
                          _buildTool(
                            icon: CupertinoIcons.bus,
                            IconColor: Colors.orange,
                            title: 'Transport\n',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TransportationPage()),
                            ),
                          ),
                          _buildTool(
                            icon: Icons.auto_awesome,
                            IconColor: Colors.lightGreen,
                            title: 'Tips\n',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Subject_Suggestions_page(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade800.withOpacity(0.5),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Information',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildTool(
                            icon: Icons.info_outline_rounded,
                            IconColor: Colors.blue,
                            title: 'About Us',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => About_Us()),
                            ),
                          ),
                          _buildTool(
                            icon: CupertinoIcons.book,
                            title: 'Courses',
                            IconColor: Colors.orange,
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Courses_offered_by_gift()),
                            ),
                          ),
                          _buildTool(
                            icon: CupertinoIcons.pencil,
                            IconColor: Colors.yellow,
                            title: 'Scholorship',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScholarshipPage()),
                            ),
                          ),
                          _buildTool(
                            icon: Icons.email_outlined,
                            IconColor: Colors.purple[400],
                            title: 'Contact Us',
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactUsPage()),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Colors.grey[900],
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey[800],
                                image: DecorationImage(
                                  image: AssetImage('assets/logo.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'GIFT Autonomous College',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Bhubaneswar',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Why GIFT?',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Gandhi Institute For Technology is Odisha's sole private autonomous college accredited by NAAC with the highest Grade of 'A++'. Its departments including CSE, ECE, MECH & EEE are accredited by NBA. The Ministry of Science & Technology, Government of India, recognizes it as a Scientific and Industrial Research Organization (SIRO).\n\n"
                          'GIFT is an authorized Remote Centre of IIT Bombay & IIT Kharagpur for IST& AEC workshops. It is recognized by the Ministry of MSME, Govt. of India, as a Host Institute/Business Incubator. GIFT is also an authorized Preparation & Exam Centre for Business English Certification Examinations conducted by Cambridge University, UK. The institution is dedicated to achieving its vision of becoming an Institution of Excellence.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => About_Us()),
                          ),
                          child: Text(
                            'Read More',
                            style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                infocards(),
                SizedBox(
                  height: 10,
                ),
                SocialMediaButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTool({
    String? image,
    IconData? icon,
    Color? IconColor,
    required String title,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle, // Square shape
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(
              icon,
              color: IconColor,
              size: 30.0,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
