import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

class Subject_Suggestions_page extends StatelessWidget {
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
          'The Diploma program at GIFT College offers specialized training in various engineering disciplines...',
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
          'The B.Tech program at GIFT College is a 4-year full-time course that offers a wide range of specializations...',
    ),
    Course(
      name: 'MCA',
      duration: '2-year Full-Time',
      specializations: ['Programming'],
      description:
          'The MCA (Master of Computer Applications) program at GIFT College is a 2-year full-time course that focuses on advanced computer concepts and applications...',
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
          'The MBA program at GIFT College is a 2-year full-time course that offers dual specializations in various areas of management...',
    ),
  ];

  final Map<String, List<Map<String, String>>> subjectLinks = {
    'Civil Engineering': [
      {
        'name': 'Structural Analysis',
        'link': 'https://www.youtube.com/watch?v=example1',
      },
      {
        'name': 'Geotechnical Engineering',
        'link': 'https://www.youtube.com/watch?v=example2',
      },
      {
        'name': 'Transportation Engineering',
        'link': 'https://www.youtube.com/watch?v=example3',
      },
      {
        'name': 'Environmental Engineering',
        'link': 'https://www.youtube.com/watch?v=example4',
      },
      {
        'name': 'Construction Management',
        'link': 'https://www.youtube.com/watch?v=example5',
      },
    ],
    'Mechanical Engineering': [
      {
        'name': 'Thermodynamics',
        'link': 'https://www.youtube.com/watch?v=example6',
      },
      {
        'name': 'Fluid Mechanics',
        'link': 'https://www.youtube.com/watch?v=example7',
      },
      {
        'name': 'Machine Design',
        'link': 'https://www.youtube.com/watch?v=example8',
      },
      {
        'name': 'Heat Transfer',
        'link': 'https://www.youtube.com/watch?v=example9',
      },
      {
        'name': 'Automobile Engineering',
        'link': 'https://www.youtube.com/watch?v=example10',
      },
    ],
    'Electrical Engineering': [
      {
        'name': 'Power Systems',
        'link': 'https://www.youtube.com/watch?v=example11',
      },
      {
        'name': 'Control Systems',
        'link': 'https://www.youtube.com/watch?v=example12',
      },
      {
        'name': 'Digital Electronics',
        'link': 'https://www.youtube.com/watch?v=example13',
      },
      {
        'name': 'Electrical Machines',
        'link': 'https://www.youtube.com/watch?v=example14',
      },
      {
        'name': 'Power Electronics',
        'link': 'https://www.youtube.com/watch?v=example15',
      },
    ],
    'Agricultural Engineering': [
      {
        'name': 'Farm Machinery and Power',
        'link': 'https://www.youtube.com/watch?v=example16',
      },
      {
        'name': 'Soil and Water Conservation Engineering',
        'link': 'https://www.youtube.com/watch?v=example17',
      },
      {
        'name': 'Agricultural Processing Engineering',
        'link': 'https://www.youtube.com/watch?v=example18',
      },
      {
        'name': 'Food and Dairy Engineering',
        'link': 'https://www.youtube.com/watch?v=example19',
      },
      {
        'name': 'Renewable Energy in Agriculture',
        'link': 'https://www.youtube.com/watch?v=example20',
      },
    ],
    'Basic Science & Humanities': [
      {
        'name': 'Physics',
        'link': 'https://www.youtube.com/watch?v=example21',
      },
      {
        'name': 'Chemistry',
        'link': 'https://www.youtube.com/watch?v=example22',
      },
      {
        'name': 'Mathematics',
        'link': 'https://www.youtube.com/watch?v=example23',
      },
      {
        'name': 'English',
        'link': 'https://www.youtube.com/watch?v=example24',
      },
      {
        'name': 'Environmental Studies',
        'link': 'https://www.youtube.com/watch?v=example25',
      },
    ],
    'Computer Science & Engineering (CSE)': [
      {
        'name': 'Data Structures',
        'link': 'https://www.youtube.com/watch?v=example26',
      },
      {
        'name': 'Algorithms',
        'link': 'https://www.youtube.com/watch?v=example27',
      },
      {
        'name': 'Database Management Systems',
        'link': 'https://www.youtube.com/watch?v=example28',
      },
      {
        'name': 'Operating Systems',
        'link': 'https://www.youtube.com/watch?v=example29',
      },
      {
        'name': 'Software Engineering',
        'link': 'https://www.youtube.com/watch?v=example30',
      },
    ],
    'Electronics Communication Engineering(ECE)': [
      {
        'name': 'Analog Electronics',
        'link': 'https://www.youtube.com/watch?v=example31',
      },
      {
        'name': 'Digital Electronics',
        'link': 'https://www.youtube.com/watch?v=example32',
      },
      {
        'name': 'Signals and Systems',
        'link': 'https://www.youtube.com/watch?v=example33',
      },
      {
        'name': 'Communication Systems',
        'link': 'https://www.youtube.com/watch?v=example34',
      },
      {
        'name': 'Microwave Engineering',
        'link': 'https://www.youtube.com/watch?v=example35',
      },
    ],
    'Electrical & Electronics Engineering(EEE)': [
      {
        'name': 'Electrical Circuits',
        'link': 'https://www.youtube.com/watch?v=example36',
      },
      {
        'name': 'Power Systems',
        'link': 'https://www.youtube.com/watch?v=example37',
      },
      {
        'name': 'Control Systems',
        'link': 'https://www.youtube.com/watch?v=example38',
      },
      {
        'name': 'Digital Electronics',
        'link': 'https://www.youtube.com/watch?v=example39',
      },
      {
        'name': 'Renewable Energy Systems',
        'link': 'https://www.youtube.com/watch?v=example40',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subject Suggestions'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return Card(
            elevation: 2,
            margin: EdgeInsets.all(8),
            child: ExpansionTile(
              title: Text(
                course.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'Duration: ${course.duration}',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                if (course.specializations.isNotEmpty)
                  ListTile(
                    title: Text(
                      'Specializations:',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                if (course.specializations.isNotEmpty)
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: course.specializations
                        .map(
                          (specialization) => GestureDetector(
                            onTap: () {
                              // Handle specialization selection
                              navigateToSpecializationPage(
                                  context, specialization);
                            },
                            child: Chip(
                              label: Text(
                                specialization,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ListTile(
                  title: Text(
                    'Description:',
                    style: TextStyle(fontSize: 14),
                  ),
                  subtitle: Text(
                    course.description,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void navigateToSpecializationPage(
      BuildContext context, String specialization) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SpecializationPage(
          specialization: specialization,
          subjects: subjectLinks[specialization] ?? [],
        ),
      ),
    );
  }
}

class SpecializationPage extends StatelessWidget {
  final String specialization;
  final List<Map<String, String>> subjects;

  SpecializationPage({
    required this.specialization,
    required this.subjects,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects - $specialization'),
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          final subject = subjects[index];
          return ListTile(
            title: Text(subject['name'] ?? ''),
            onTap: () async {
              final link = subject['link'];
              if (link != null && await canLaunch(link)) {
                await launch(link);
              }
            },
          );
        },
      ),
    );
  }
}
