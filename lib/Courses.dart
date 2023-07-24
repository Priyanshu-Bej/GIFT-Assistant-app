import 'package:flutter/material.dart';

class Course {
  final String name;
  final String duration;
  final List<String> specializations;
  final String description;

  Course({
    required this.name,
    required this.duration,
    required this.specializations,
    required this.description,
  });
}

class Courses_offered_by_gift extends StatelessWidget {
  final List<Course> courses = [
    Course(
      name: 'Diploma',
      duration: '3-year Full-Time',
      specializations: [
        'Civil Engineering',
        'Mechanical Engineering',
        'Electrical Engineering',
      ],
      description:
          'The Diploma program at GIFT College offers specialized training in various engineering disciplines, including Civil Engineering, Mechanical Engineering, Electrical Engineering, Electrical & Electronics Engineering, and Computer Science & Engineering. The program is designed to provide students with a strong foundation and practical skills required for a successful career in the respective fields.',
    ),
    Course(
      name: 'B.Tech / B.Tech (LE)',
      duration: '4-year Full-Time',
      specializations: [
        'Civil Engineering',
        'Mechanical Engineering',
        'Electrical Engineering',
        'Agricultural Engineering',
        'Basic Science & Humanities',
        'Computer Science & Engineering (CSE)',
        'Electronics Communication Engineering(ECE)',
        'Electrical & Electronics Engineering(EEE)',
      ],
      description:
          'The B.Tech program at GIFT College is a 4-year full-time course that offers a wide range of specializations, including Agricultural Engineering, Civil Engineering, Mechanical Engineering, Electrical Engineering, Electrical & Electronics Engineering, Electronics Communication Engineering, Computer Science & Engineering (CSE), Computer Science & Engineering (CSE AI), and Computer Science & Engineering (CE). The program focuses on imparting comprehensive knowledge and practical skills to students to excel in the field of engineering.',
    ),
    Course(
      name: 'M.Tech',
      duration: '2-year Full-Time',
      specializations: [
        'Environmental Engineering',
        'Computer Science Engineering',
        'Industrial Safety & Engineering',
        'Civil Engineering',
      ],
      description:
          'The M.Tech program at GIFT College is a 2-year full-time course that offers specialized training in various engineering disciplines, including Environmental Engineering, Construction Technology & Management, Computer Science Engineering, Computer Science Engineering (AI&ML), and Industrial Safety & Engineering. The program aims to develop advanced technical expertise and research skills in students to pursue careers in their chosen fields.',
    ),
    Course(
      name: 'MCA',
      duration: '2-year Full-Time',
      specializations: [],
      description:
          'The MCA (Master of Computer Applications) program at GIFT College is a 2-year full-time course that focuses on advanced computer concepts and applications. The program is designed to equip students with the necessary skills and knowledge to become proficient in computer programming, software development, database management, and other related areas. Graduates of this program can pursue rewarding careers in the IT industry.',
    ),
    Course(
      name: 'MBA',
      duration: '2-year Full-Time – Dual Specialisation',
      specializations: [
        'Finance Management',
        'Human Resource Management',
        'Marketing Management',
        'Rural Management',
      ],
      description:
          'The MBA (Master of Business Administration) program at GIFT College is a 2-year full-time course that offers dual specializations in various areas, including Finance Management, Human Resource Management, Marketing Management, Supply Chain Management, Rural Management, Aviation & Airport Management, and Hospital & Healthcare Management. The program focuses on developing leadership, management, and strategic skills in students to excel in the business world.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses in GIFT College'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            title: Text(
              course.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Text(
                  'Duration: ${course.duration}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                if (course.specializations.isNotEmpty) ...[
                  Text(
                    'Specializations:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: course.specializations
                        .map((specialization) => Chip(
                              label: Text(specialization),
                            ))
                        .toList(),
                  ),
                  SizedBox(height: 8),
                ],
                Text(
                  'Description:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  course.description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
