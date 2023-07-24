import 'package:flutter/material.dart';

class NoticesPage extends StatelessWidget {
  final List<Notice> notices = [
    Notice(
      title: 'Important Announcement',
      description:
          'All students are required to attend the orientation session on June 25th in the auditorium.',
      date: 'June 20, 2023',
      icon: Icons.info,
    ),
    Notice(
      title: 'Library Closure',
      description:
          'The library will be closed for maintenance from July 1st to July 5th. Sorry for the inconvenience.',
      date: 'June 28, 2023',
      icon: Icons.library_books,
    ),
    Notice(
      title: 'Scholarship Application Deadline',
      description:
          'The deadline to submit scholarship applications is approaching. Make sure to submit your application before July 10th.',
      date: 'July 2, 2023',
      icon: Icons.attach_money,
    ),
    Notice(
      title: 'Campus Cleanup Drive',
      description:
          'Join us on July 15th for a campus cleanup drive. Let\'s keep our campus clean and green!',
      date: 'July 5, 2023',
      icon: Icons.cleaning_services,
    ),
    Notice(
      title: 'Guest Lecture on Entrepreneurship',
      description:
          'A guest lecture on entrepreneurship will be held on July 18th in the seminar hall. Don\'t miss this opportunity!',
      date: 'July 8, 2023',
      icon: Icons.mic,
    ),
    Notice(
      title: 'Sports Tournament Registration',
      description:
          'Registration for the annual sports tournament is now open. Register at the sports office before July 20th.',
      date: 'July 12, 2023',
      icon: Icons.sports_soccer,
    ),
    Notice(
      title: 'Career Development Workshop',
      description:
          'Attend the career development workshop on July 25th to enhance your job-seeking skills.',
      date: 'July 15, 2023',
      icon: Icons.work,
    ),
    Notice(
      title: 'College Picnic Announcement',
      description:
          'Get ready for a fun-filled college picnic on August 1st. More details will be shared soon.',
      date: 'July 18, 2023',
      icon: Icons.beach_access,
    ),
    Notice(
      title: 'Seminar on Artificial Intelligence',
      description:
          'A seminar on artificial intelligence will be conducted on August 5th. Register now to secure your spot.',
      date: 'July 22, 2023',
      icon: Icons.computer,
    ),
    Notice(
      title: 'Final Exam Schedule',
      description:
          'The final exam schedule for the current semester is available now. Check the notice board for details.',
      date: 'July 25, 2023',
      icon: Icons.calendar_today,
    ),
    // Add 10 more notices here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notices'),
      ),
      body: ListView.builder(
        itemCount: notices.length,
        itemBuilder: (context, index) {
          final notice = notices[index];
          return Card(
            child: ListTile(
              leading: Icon(
                notice.icon,
                size: 36.0,
              ),
              title: Text(
                notice.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notice.description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    notice.date,
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Notice {
  final String title;
  final String description;
  final String date;
  final IconData icon;

  Notice({
    required this.title,
    required this.description,
    required this.date,
    required this.icon,
  });
}
