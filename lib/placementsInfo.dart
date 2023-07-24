import 'package:flutter/material.dart';

class Course {
  final String name;
  final String duration;
  final List<String> specializations;

  Course(
      {required this.name,
      required this.duration,
      required this.specializations});
}

class PlacementDrive {
  final String companyName;
  final String designation;
  final String date;
  final String additionalInfo;

  PlacementDrive({
    required this.companyName,
    required this.designation,
    required this.date,
    required this.additionalInfo,
  });
}

class PlacementDrives extends StatefulWidget {
  @override
  _PlacementDrivesState createState() => _PlacementDrivesState();
}

class _PlacementDrivesState extends State<PlacementDrives> {
  String? selectedCourse;
  String? selectedSpecialization;
  String? selectedYear;

  final List<Course> courses = [
    Course(
      name: 'Diploma',
      duration: '3-year Full-Time',
      specializations: [
        'Civil Engineering',
        'Mechanical Engineering',
        'Electrical Engineering',
        'Electrical & Electronics Engineering',
        'Computer Science & Engineering',
      ],
    ),
    Course(
      name: 'BTech',
      duration: '4-year Full-Time',
      specializations: [
        'Agricultural Engineering',
        'Civil Engineering',
        'Mechanical Engineering',
        'Electrical Engineering',
        'Electrical & Electronics Engineering',
        'Electronics Communication Engineering',
        'Computer Science & Engineering (CSE)',
        'Computer Science & Engineering (CSE AI)',
        'Computer Science & Engineering (CE)',
      ],
    ),
    Course(
      name: 'MCA',
      duration: '2-year Full-Time',
      specializations: [],
    ),
    Course(
      name: 'MBA',
      duration: '2-year Full-Time – Dual Specialisation',
      specializations: [
        'Finance Management',
        'Human Resource Management',
        'Marketing Management',
        'Supply Chain Management',
        'Rural Management',
        'Aviation & Airport Management',
        'Hospital & Healthcare Management',
      ],
    ),
  ];

  final List<PlacementDrive> placementDrives = [
    PlacementDrive(
      companyName: 'ABC Technologies',
      designation: 'Software Engineer',
      date: 'June 25, 2023',
      additionalInfo: 'Off-campus drive in XYZ City',
    ),
    PlacementDrive(
      companyName: 'XYZ Solutions',
      designation: 'Business Analyst',
      date: 'July 10, 2023',
      additionalInfo: 'Off-campus drive in ABC City',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Catalog'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Courses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Select Course',
                border: OutlineInputBorder(),
              ),
              value: selectedCourse,
              items: courses.map((course) {
                return DropdownMenuItem<String>(
                  value: course.name,
                  child: Text(course.name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCourse = value;
                  selectedSpecialization = null;
                  selectedYear = null;
                });
              },
            ),
            SizedBox(height: 16),
            if (selectedCourse != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (selectedCourse == 'MCA')
                    SizedBox(height: 32)
                  else
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Specialization',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: 'Select Specialization',
                            border: OutlineInputBorder(),
                          ),
                          value: selectedSpecialization,
                          items: getSpecializations(selectedCourse!),
                          onChanged: (value) {
                            setState(() {
                              selectedSpecialization = value;
                              selectedYear = null;
                            });
                          },
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  Text(
                    'Year',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Select Year',
                      border: OutlineInputBorder(),
                    ),
                    value: selectedYear,
                    items: [
                      DropdownMenuItem<String>(
                        value: 'First Year',
                        child: Text('First Year'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Second Year',
                        child: Text('Second Year'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Third Year',
                        child: Text('Third Year'),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedYear = value;
                      });
                    },
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Upcoming Placement Drives',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: placementDrives.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(placementDrives[index].companyName),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Designation: ${placementDrives[index].designation}'),
                            Text('Date: ${placementDrives[index].date}'),
                            Text(
                                'Additional Info: ${placementDrives[index].additionalInfo}'),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> getSpecializations(String courseName) {
    final selectedCourse =
        courses.firstWhere((course) => course.name == courseName);
    return selectedCourse.specializations.map((specialization) {
      return DropdownMenuItem<String>(
        value: specialization,
        child: Text(specialization),
      );
    }).toList();
  }
}
