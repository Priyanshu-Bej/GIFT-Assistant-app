import 'package:flutter/material.dart';

class Course {
  final String name;
  final String duration;
  final List<String> specializations;

  Course({
    required this.name,
    required this.duration,
    required this.specializations,
  });
}

class Note {
  final String title;
  final String description;
  final IconData icon;

  Note({
    required this.title,
    required this.description,
    required this.icon,
  });
}

class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  Course? selectedCourse;
  String? selectedSpecialization;
  int? selectedSemester;

  List<Course> courses = [
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
    // Rest of the course data...
  ];

  List<Note> notes = [
    Note(
      title: 'Note 1',
      description: 'Description of Note 1',
      icon: Icons.note,
    ),
    // Rest of the note data...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Selection'),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Select a Course',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      courses[index].name,
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      setState(() {
                        selectedCourse = courses[index];
                        selectedSpecialization = null;
                        selectedSemester = null;
                      });
                    },
                  );
                },
              ),
            ),
            if (selectedCourse != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Select a Specialization',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView.separated(
                      itemCount: selectedCourse!.specializations.length,
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.white,
                      ),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            selectedCourse!.specializations[index],
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            setState(() {
                              selectedSpecialization =
                                  selectedCourse!.specializations[index];
                              selectedSemester = null;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            if (selectedSpecialization != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Select a Semester',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView.separated(
                      itemCount: 8,
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.white,
                      ),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            'Semester ${index + 1}',
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            setState(() {
                              selectedSemester = index + 1;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            if (selectedSemester != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Notes',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: notes.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.grey[800],
                          child: ListTile(
                            leading: Icon(
                              notes[index].icon,
                              color: Colors.white,
                            ),
                            title: Text(
                              notes[index].title,
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              notes[index].description,
                              style: TextStyle(color: Colors.white),
                            ),
                            onTap: () {
                              // Handle note selection
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
